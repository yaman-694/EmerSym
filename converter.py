from os import path
from pydub import AudioSegment

# assign files
input_file = r"C:\Users\jyama\Downloads\7383-3-0-0.mp3"
output_file = "result.wav"

# convert mp3 file to wav file
sound = AudioSegment.from_mp3(input_file)
sound.export(output_file, format="wav")