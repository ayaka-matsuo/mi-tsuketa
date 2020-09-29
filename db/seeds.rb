# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
   email: 'test@test.com',
   name: 'test',
   age: '34',
   sex: '2',
   password: '123456',
   password_confirmation: '123456',
   place: '京都府'

)


Genre.create!(
[
	{
		id: 1,
		name: 'ぬいぐるみ',
	},

	{
		id: 2,
		name: 'お風呂のおもちゃ',
	},

	{
		id: 3,
		name: '知育玩具',
	},

	{
		id: 4,
		name: '男の子',
	},

	{
		id: 5,
		name: 'ガラガラ',
	},
]
)

Toy.create!(
[
	{
		id: 1,
		name: 'ブルーナ ボンボン',
		manufacturer: 'アイデス',
		toy_introduction: 'ミッフィーでおなじみのディック・ブルーナが描く絵本の世界のうさぎが、かわいいバルーン遊具になりました。
		バランスボールのような素材でできているので、ピョンピョンと飛び跳ねて遊ぶことができ、気軽に運動ができます。柔らかい本体のため、床を傷つける心配がありません。',
		price: '6481',
		material: 'PVC',
		depth: '500',
		width: '270',
		height: '470',
		target_yearage: '3',
		target_monthage: '0',
		genre_id: '1',
		toy1_image: File.open('./app/assets/images/09201.jpg'),
		toy2_image: File.open('./app/assets/images/09203.jpg'),
		toy3_image: File.open('./app/assets/images/09205.jpg'),
	},

	{
		id: 2,
		name: 'おふろでピッピ! アンパンマンの10までかぞえるえほん',
		manufacturer: '(C)やなせたかし/フレーベル館・TMS・NTV',
		toy_introduction: '目と耳と手を使っておふろで楽しく、1～10の数字をおぼえる えほん です。アンパンマンとなかまたちがたくさん登場！ミニ図鑑としても楽しめます。',
		price: '1499',
		material: 'EVA',
		depth: '3',
		width: '15',
		height: '16.6',
		target_yearage: '0',
		target_monthage: '18',
		genre_id: '2',
		toy1_image: File.open('./app/assets/images/09206.jpg'),
		toy2_image: File.open('./app/assets/images/09208.jpg'),
		toy3_image: File.open('./app/assets/images/09209.jpg'),
	},

	{
		id: 3,
		name: 'アンパンマン　ジャバジャバおふろスライダー',
		manufacturer: '(C)やなせたかし/フレーベル館・TMS・NTV',
		toy_introduction: 'コップでだだんだんにお湯を注ぐと、だだんだんがタンクになってスライダーにお湯が流れ始めます。コップでお湯を注ぐ楽しさを実感！だだんだんの手が動くギミックを採用！　
		お湯を注ぐと手が動きます!だだんだんの頭部はバケツにもなっており、直接水をくむこともできます。',
		price: '2809',
		material: 'ABS',
		depth: '17',
		width: '48',
		height: '40.5',
		target_yearage: '3',
		target_monthage: '0',
		genre_id: '2',
		toy1_image: File.open('./app/assets/images/092010.jpg'),
		toy2_image: File.open('./app/assets/images/092011.jpg'),
		toy3_image: File.open('./app/assets/images/092012.jpg'),
	},

	{
		id: 4,
		name: 'アンパンマン おおきなよくばりボックス',
		manufacturer: '(C)やなせたかし/フレーベル館・TMS・NTV',
		toy_introduction: 'おおきなよくばりボックスが7面になってパワーアップ！！メロディ8曲、おしゃべり、光、手遊びなど子供の手や指の発育にピッタリの内容がつまっています。アンケートで人気の高かったスマートフォンがつきました！',
		price: '5497',
		material: 'ABS',
		depth: '33',
		width: '35',
		height: '31',
		target_yearage: '0',
		target_monthage: '10',
		genre_id: '3',
		toy1_image: File.open('./app/assets/images/09202.jpg'),
		toy2_image: File.open('./app/assets/images/092013.jpg'),
	},

	{
		id: 5,
		name: 'アンパンマン にぎって!おとして! 光る くるコロタワー',
		manufacturer: '(C)やなせたかし/フレーベル館・TMS・NTV',
		toy_introduction: '・アンパンマンのあたまにボールを入れると「ポン！」など楽しい音が鳴り、アンパンマンのほっぺが光ります。ボールが回転しながらおちてきて、同時におしゃべりとメロディが流れます。',
		price: '3497',
		material: 'ABS',
		depth: '26.5',
		width: '25.7',
		height: '32',
		target_yearage: '0',
		target_monthage: '18',
		genre_id: '2',
		toy1_image: File.open('./app/assets/images/092017.jpg'),
		toy2_image: File.open('./app/assets/images/092018.jpg'),
	},

	{
		id: 6,
		name: 'アヒル隊長 おふろでローリー',
		manufacturer: 'パイロット',
		toy_introduction: '揺らすと揺れながらポロンポロンとローリーの音が鳴ります。湯ぶねに浮かべて遊べます。',
		price: '1780',
		material: 'ABS',
		depth: '19',
		width: '15',
		height: '9',
		target_yearage: '0',
		target_monthage: '5',
		genre_id: '3',
		toy1_image: File.open('./app/assets/images/092014.jpg'),
		toy2_image: File.open('./app/assets/images/092016.jpg'),
	},

	{
		id: 7,
		name: 'ポケットモンスター ガチッとゲットだぜ! モンスターボール',
		manufacturer: 'タカラトミー',
		toy_introduction: '『ガチゲットアクション』でポケモンゲットの旅! 新感覚･体感型モンスターボール液晶トイ登場!',
		price: '7240',
		material: 'ABS',
		depth: '19',
		width: '15.2',
		height: '13.1',
		target_yearage: '4',
		target_monthage: '0',
		genre_id: '4',
		toy1_image: File.open('./app/assets/images/092021.jpg'),
		toy2_image: File.open('./app/assets/images/092023.jpg'),
	},

	{
		id: 8,
		name: 'メルちゃん お人形セット おせわだいすきメルちゃん',
		manufacturer: 'PILOT',
		toy_introduction: 'だっこしてミルクを飲ませてあげたり、おねんねさせたり、一緒にお風呂に入ったり、お世話ごっこを通して思いやりの心を育みます。',
		price: '2109',
		material: 'PVC',
		depth: '14',
		width: '16',
		height: '23.3',
		target_yearage: '0',
		target_monthage: '18',
		genre_id: '1',
		toy1_image: File.open('./app/assets/images/092019.jpg'),
		toy2_image: File.open('./app/assets/images/092020.jpg'),
	},

	{
		id: 9,
		name: '離れずぎゅっ!と 落ちないラトル',
		manufacturer: 'ピープル',
		toy_introduction: '生後2ヶ月の赤ちゃんでおもちゃをもたせてもすぐ落としちゃうから!離れずぎゅっ!と 落ちないラトルです。',
		price: '760',
		material: 'ポリエステル',
		depth: '5.5',
		width: '14.8',
		height: '18',
		target_yearage: '0',
		target_monthage: '2',
		genre_id: '5',
		toy1_image: File.open('./app/assets/images/092028.jpg'),
		toy2_image: File.open('./app/assets/images/092029.jpg'),
	},

	{
		id: 10,
		name: 'レゴ スーパーマリオ レゴ(R)マリオ と ぼうけんのはじまり',
		manufacturer: 'LEGO',
		toy_introduction: 'マリオといっしょにチャレンジする、あなただけのレゴ(R) マリオの世界を作り出そう！',
		price: '7600',
		material: 'ポリエステル',
		depth: '5.5',
		width: '14.8',
		height: '18',
		target_yearage: '6',
		target_monthage: '0',
		genre_id: '4',
		toy1_image: File.open('./app/assets/images/092025.jpg'),
		toy2_image: File.open('./app/assets/images/092026.jpg'),
	},
]
)


Temperament.create!(
[
	{
		id: 1,
		name: 'おとなしい',
	},

	{
		id: 2,
		name: '活発',
	},

	{
		id: 3,
		name: '愛想がいい',
	},

	{
		id: 4,
		name: '人見知り',
	},

	{
		id: 5,
		name: 'お調子者',
	},

	{
		id: 6,
		name: 'マイペース',
	},

	{
		id: 7,
		name: '負けず嫌い',
	},

	{
		id: 8,
		name: '1人でやりたがる',
	},

	{
		id: 9,
		name: '寂しがりや',
	},

	{
		id: 10,
		name: '飽きっぽい',
	},

	{
		id: 11,
		name: '落ち着きがない',
	},

	{
		id: 12,
		name: '恥ずかしがり',
	},

	{
		id: 13,
		name: '甘えん坊',
	},

	{
		id: 14,
		name: 'わがまま',
	},

	{
		id: 15,
		name: 'いやいや',
	},

]
)

Effect.create!(
[
	{
		id: 1,
		name: 'コスパ高い',
	},

	{
		id: 2,
		name: '買って良かった',
	},

	{
		id: 3,
		name: '長く遊べる',
	},

	{
		id: 4,
		name: '大夢中',
	},

	{
		id: 5,
		name: '大喜び',
	},

	{
		id: 6,
		name: 'いつも遊んでいます',
	},

	{
		id: 7,
		name: '助かりました',
	},
]
)

Child.create!(
   user_id: '1',
   sex: '1',
   age_year: '3',
   age_month: '2',
   name: 'testchild',
   environment: '1',
   favorite_thing: 'アンパンマン',
   un_favorite_thing: 'ピーマン',
   status: 'ママ・パパ大好き！',
)


ChildTemperament.create!(
   child_id: '1',
   :temperament_ids[] '1', '5', '6'
)

ChildArchive.create!(
   child_id: '1',
   user_id: '1',
   sex: '1',
   age_year: '3',
   age_month: '2',
   name: 'testchild',
   environment: '1',
   favorite_thing: 'アンパンマン',
   un_favorite_thing: 'ピーマン',
   status: 'ママ・パパ大好き！',
)

ChildArchiveTemperament.create!(
   child_archive_id: '1',
   :temperament_ids[] '1', '5', '6'
)



























