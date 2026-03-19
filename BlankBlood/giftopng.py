from PIL import Image
import os

# OK, so let's convert a gif animation to combined png sequence frames (horizontal strip)
def gif_to_png(gif_path, output_path):
	# Open the GIF file
	with Image.open(gif_path) as img:
		# Get the number of frames in the GIF
		frame_count = img.n_frames
		
		# Create a new image to hold the combined frames (horizontal strip)
		combined_width = img.width * frame_count
		combined_height = img.height
		combined_image = Image.new('RGBA', (combined_width, combined_height))
		
		# Loop through each frame and paste it into the combined image
		for frame in range(frame_count):
			img.seek(frame)  # Move to the current frame
			combined_image.paste(img, (frame * img.width, 0))  # Paste the frame at the correct position
		
		# ok now let's remove the background color (assuming it's the left-bottom pixel color)
		background_color = combined_image.getpixel((0, combined_image.height - 1))
		for x in range(combined_image.width):
			for y in range(combined_image.height):
				if combined_image.getpixel((x, y)) == background_color:
					combined_image.putpixel((x, y), (0, 0, 0, 0))  # Set to transparent

		# Save the combined image as a PNG file
		combined_image.save(output_path)
		return frame_count

# japanese encoding
with open ('output.gml', 'w', encoding='utf-8') as write:
	with open('target.gml', 'r', encoding='utf-8') as file:
		gml_code = file.read()
		gml_code = gml_code.split('\n')

		for line in gml_code:
			# line includes sprite_add
			if 'sprite_add' in line:
				# global.SprP_Atk_10[0] = sprite_add("Chara/1/Atk_10.gif",0,1,0,48,48);
				# Extract the path
				start_index = line.find('("') + 2
				end_index = line.find('",')
				gif_path = line[start_index:end_index]
				print(gif_path)

				# Convert the GIF to PNG and save png to pngs
				# check if gif exists
				if not os.path.exists(gif_path):
					print(f"File {gif_path} does not exist.")
					write.write(line + '\n')
					continue
				# output path will be pngs/.../filename.png
				output_path = os.path.join('pngs', os.path.splitext(gif_path)[0] + '.png')
				os.makedirs(os.path.dirname(output_path), exist_ok=True)
				frame_count = gif_to_png(gif_path, output_path)

				# change code to global.SprP_Atk_10[0] = sprite_add("png path",frame count,1,0,48,48);
				# start_index and end_index are the same as before, but we need to find the index of the next comma after end_index
				next_comma_index = line.find(',', end_index)
				next_next_comma_index = line.find(',', next_comma_index + 1)
				new_line = line[:start_index] + output_path.replace('\\', '/') + line[end_index:next_comma_index] + "," + str(frame_count) + line[next_next_comma_index:]
				write.write(new_line + '\n')
			else:
				write.write(line + '\n')