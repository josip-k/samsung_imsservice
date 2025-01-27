.class public Lcom/sec/internal/helper/picturetool/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GifDecoder"

.field private static final MAX_FRAMES:I = 0x32

.field protected static final MAX_STACK_SIZE:I = 0x1000

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected delay:I

.field protected dispose:I

.field protected frameCount:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/InputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastBitmap:Landroid/graphics/Bitmap;

.field protected lastDispose:I

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->loopCount:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 78
    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->block:[B

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    .line 81
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->dispose:I

    .line 83
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastDispose:I

    .line 84
    iput-boolean v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transparency:Z

    .line 85
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->delay:I

    return-void
.end method

.method private allcateBitmapData(I)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixels:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 327
    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixels:[B

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->prefix:[S

    const/16 v0, 0x1000

    if-nez p1, :cond_2

    new-array p1, v0, [S

    .line 330
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->prefix:[S

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->suffix:[B

    if-nez p1, :cond_3

    new-array p1, v0, [B

    .line 333
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->suffix:[B

    .line 335
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    if-nez p1, :cond_4

    const/16 p1, 0x1001

    new-array p1, p1, [B

    .line 336
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    :cond_4
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 4

    .line 754
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 756
    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;

    iget-object v2, v2, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 757
    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 759
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method protected decodeBitmapData()V
    .locals 25

    move-object/from16 v0, p0

    .line 344
    iget v1, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iw:I

    iget v2, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ih:I

    mul-int/2addr v1, v2

    .line 348
    invoke-direct {v0, v1}, Lcom/sec/internal/helper/picturetool/GifDecoder;->allcateBitmapData(I)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v2

    const/4 v3, 0x1

    shl-int v4, v3, v2

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v4, 0x2

    add-int/2addr v2, v3

    shl-int v7, v3, v2

    sub-int/2addr v7, v3

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v4, :cond_0

    .line 359
    iget-object v10, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->prefix:[S

    aput-short v8, v10, v9

    .line 360
    iget-object v10, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->suffix:[B

    int-to-byte v11, v9

    aput-byte v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move v13, v2

    move v15, v7

    move v10, v8

    move v11, v10

    move v12, v11

    move v14, v12

    move/from16 v16, v14

    move/from16 v17, v16

    move/from16 v19, v17

    move/from16 v20, v19

    const/16 v18, -0x1

    move v8, v6

    :goto_1
    if-ge v10, v1, :cond_c

    if-nez v11, :cond_b

    if-ge v12, v13, :cond_3

    if-nez v16, :cond_2

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readBlock()I

    move-result v16

    if-gtz v16, :cond_1

    goto/16 :goto_5

    :cond_1
    const/16 v17, 0x0

    .line 376
    :cond_2
    iget-object v9, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->block:[B

    aget-byte v9, v9, v17

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v12

    add-int/2addr v14, v9

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v17, v17, 0x1

    const/4 v9, -0x1

    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    :cond_3
    const/4 v9, -0x1

    and-int v3, v14, v15

    shr-int/2addr v14, v13

    sub-int/2addr v12, v13

    if-gt v3, v8, :cond_c

    if-ne v3, v5, :cond_4

    goto/16 :goto_5

    :cond_4
    if-ne v3, v4, :cond_5

    move v13, v2

    move v8, v6

    move v15, v7

    move/from16 v18, v9

    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    move/from16 v24, v18

    move/from16 v18, v2

    move/from16 v2, v24

    if-ne v2, v9, :cond_6

    .line 399
    iget-object v2, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    add-int/lit8 v9, v11, 0x1

    move/from16 v21, v5

    iget-object v5, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->suffix:[B

    aget-byte v5, v5, v3

    aput-byte v5, v2, v11

    move/from16 v19, v3

    move v11, v9

    move/from16 v2, v18

    move/from16 v5, v21

    move/from16 v18, v19

    goto :goto_2

    :cond_6
    move/from16 v21, v5

    if-ne v3, v8, :cond_7

    .line 406
    iget-object v5, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    add-int/lit8 v9, v11, 0x1

    move/from16 v22, v3

    move/from16 v3, v19

    int-to-byte v3, v3

    aput-byte v3, v5, v11

    move v3, v2

    move v11, v9

    goto :goto_3

    :cond_7
    move/from16 v22, v3

    :goto_3
    if-le v3, v4, :cond_8

    .line 410
    iget-object v5, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    add-int/lit8 v9, v11, 0x1

    move/from16 v19, v4

    iget-object v4, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->suffix:[B

    aget-byte v4, v4, v3

    aput-byte v4, v5, v11

    .line 411
    iget-object v4, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->prefix:[S

    aget-short v3, v4, v3

    move v11, v9

    move/from16 v4, v19

    goto :goto_3

    :cond_8
    move/from16 v19, v4

    .line 413
    iget-object v4, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->suffix:[B

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0x1000

    if-lt v8, v5, :cond_9

    goto :goto_5

    .line 418
    :cond_9
    iget-object v9, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    add-int/lit8 v23, v11, 0x1

    int-to-byte v5, v3

    aput-byte v5, v9, v11

    .line 419
    iget-object v9, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->prefix:[S

    int-to-short v2, v2

    aput-short v2, v9, v8

    .line 420
    aput-byte v5, v4, v8

    add-int/lit8 v8, v8, 0x1

    and-int v2, v8, v15

    if-nez v2, :cond_a

    const/16 v2, 0x1000

    if-ge v8, v2, :cond_a

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v15, v8

    :cond_a
    move/from16 v2, v22

    move/from16 v11, v23

    goto :goto_4

    :cond_b
    move/from16 v21, v5

    move/from16 v3, v19

    move/from16 v19, v4

    move/from16 v24, v18

    move/from16 v18, v2

    move/from16 v2, v24

    :goto_4
    const/4 v4, -0x1

    add-int/2addr v11, v4

    .line 431
    iget-object v5, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixels:[B

    add-int/lit8 v9, v20, 0x1

    iget-object v4, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelStack:[B

    aget-byte v4, v4, v11

    aput-byte v4, v5, v20

    add-int/lit8 v10, v10, 0x1

    move/from16 v20, v9

    move/from16 v4, v19

    move/from16 v5, v21

    move/from16 v19, v3

    const/4 v3, 0x1

    move/from16 v24, v18

    move/from16 v18, v2

    move/from16 v2, v24

    goto/16 :goto_1

    :cond_c
    :goto_5
    move/from16 v2, v20

    :goto_6
    if-ge v2, v1, :cond_d

    .line 435
    iget-object v3, v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixels:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method protected err()Z
    .locals 0

    .line 443
    iget p0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 248
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 252
    :cond_0
    rem-int/2addr p1, v0

    if-ltz p1, :cond_2

    .line 254
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;

    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getFrames()Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation

    .line 763
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    return-object p0
.end method

.method protected init()V
    .locals 1

    const/4 v0, 0x0

    .line 450
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    .line 451
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    .line 452
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 453
    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gct:[I

    .line 454
    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lct:[I

    return-void
.end method

.method protected read()I
    .locals 1

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 465
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public read(Ljava/lang/String;)I
    .locals 3

    const-string v0, "Could not close stream"

    .line 295
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->init()V

    const/4 v1, 0x0

    .line 299
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 301
    :try_start_1
    iput-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->in:Ljava/io/InputStream;

    .line 302
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readHeader()V

    .line 303
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result p1

    if-nez p1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readContents()V

    .line 305
    iget p1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 306
    iput p1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    :goto_0
    const/4 p1, 0x2

    .line 310
    :try_start_3
    iput p1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 314
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 317
    sget-object v1, Lcom/sec/internal/helper/picturetool/GifDecoder;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    :cond_1
    :goto_1
    iget p0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    return p0

    :goto_2
    if-eqz v1, :cond_2

    .line 314
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 317
    sget-object v1, Lcom/sec/internal/helper/picturetool/GifDecoder;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    :cond_2
    :goto_3
    throw p0
.end method

.method protected readBitmap()V
    .locals 8

    .line 635
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ix:I

    .line 636
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iy:I

    .line 637
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iw:I

    .line 638
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ih:I

    .line 639
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 640
    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lctFlag:Z

    and-int/lit8 v1, v0, 0x7

    add-int/2addr v1, v2

    int-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 641
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lctSize:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 645
    :goto_1
    iput-boolean v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->interlace:Z

    .line 646
    iget-boolean v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lctFlag:Z

    if-eqz v0, :cond_2

    .line 647
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lct:[I

    .line 648
    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->act:[I

    goto :goto_2

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gct:[I

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->act:[I

    .line 651
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->bgIndex:I

    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transIndex:I

    if-ne v0, v1, :cond_3

    .line 652
    iput v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->bgColor:I

    .line 656
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->act:[I

    if-nez v0, :cond_4

    .line 657
    iput v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    return-void

    .line 660
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 663
    :cond_5
    iget-boolean v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transparency:Z

    if-eqz v0, :cond_6

    .line 664
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->act:[I

    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transIndex:I

    aget v4, v0, v1

    .line 665
    aput v3, v0, v1

    move v3, v4

    .line 667
    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->decodeBitmapData()V

    .line 668
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->skip()V

    .line 669
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 672
    :cond_7
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    .line 674
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->width:I

    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 675
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->setPixels()V

    .line 676
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frames:Ljava/util/Vector;

    new-instance v1, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;

    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->delay:I

    invoke-direct {v1, v2, v4}, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 678
    iget-boolean v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transparency:Z

    if-eqz v0, :cond_8

    .line 679
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->act:[I

    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transIndex:I

    aput v3, v0, v1

    .line 681
    :cond_8
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->resetFrame()V

    return-void
.end method

.method protected readBlock()I
    .locals 4

    .line 476
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 481
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_1

    .line 482
    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->block:[B

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 489
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    :cond_1
    :goto_1
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_2

    const/4 v0, 0x1

    .line 492
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    :cond_2
    return v1
.end method

.method protected readColorTable(I)[I
    .locals 8

    mul-int/lit8 v0, p1, 0x3

    .line 507
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 510
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 512
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 p1, 0x1

    .line 515
    iput p1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    const/16 p0, 0x100

    new-array p0, p0, [I

    move v0, v2

    :goto_1
    if-ge v2, p1, :cond_1

    add-int/lit8 v3, v0, 0x1

    .line 521
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, v3, 0x1

    .line 522
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 523
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v2, 0x1

    shl-int/lit8 v0, v0, 0x10

    const/high16 v7, -0x1000000

    or-int/2addr v0, v7

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    or-int/2addr v0, v4

    .line 524
    aput v0, p0, v2

    move v0, v5

    move v2, v6

    goto :goto_1

    :cond_1
    :goto_2
    return-object p0
.end method

.method protected readContents()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v1, :cond_a

    .line 536
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_a

    .line 537
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v2

    .line 538
    sget-object v3, Lcom/sec/internal/helper/picturetool/GifDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    .line 584
    iput v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    .line 541
    :cond_1
    iget v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_2

    .line 542
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readBitmap()V

    goto :goto_0

    :cond_2
    return-void

    .line 548
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v2

    if-eq v2, v4, :cond_9

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_8

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4

    .line 576
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->skip()V

    goto :goto_0

    .line 554
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readBlock()I

    const/16 v2, 0xb

    new-array v3, v2, [C

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 558
    iget-object v5, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->block:[B

    aget-byte v5, v5, v4

    int-to-char v5, v5

    aput-char v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 561
    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    const-string v3, "NETSCAPE2.0"

    .line 563
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 564
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 566
    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->skip()V

    goto :goto_0

    .line 570
    :cond_7
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->skip()V

    goto/16 :goto_0

    .line 551
    :cond_8
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readGraphicControlExt()V

    goto/16 :goto_0

    .line 573
    :cond_9
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->skip()V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .line 593
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    .line 594
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    .line 595
    iput v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->dispose:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 597
    iput v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->dispose:I

    :cond_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 599
    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transparency:Z

    .line 600
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->delay:I

    .line 601
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transIndex:I

    .line 602
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    return-void
.end method

.method protected readHeader()V
    .locals 4

    const/4 v0, 0x6

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 617
    sget-object v1, Lcom/sec/internal/helper/picturetool/GifDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readHeader: start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GIF"

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 619
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->status:I

    return-void

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readLSD()V

    .line 623
    iget-boolean v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gctFlag:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_2

    .line 624
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gctSize:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gct:[I

    if-eqz v0, :cond_2

    .line 626
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->bgIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->bgColor:I

    :cond_2
    return-void
.end method

.method protected readLSD()V
    .locals 3

    .line 689
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->width:I

    .line 690
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->height:I

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 694
    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gctFlag:Z

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    shl-int v0, v1, v0

    .line 697
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gctSize:I

    .line 698
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->bgIndex:I

    .line 699
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelAspect:I

    .line 700
    sget-object v0, Lcom/sec/internal/helper/picturetool/GifDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pixelAspect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixelAspect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gctSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gctSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gctFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->gctFlag:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected readNetscapeExt()V
    .locals 3

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readBlock()I

    .line 710
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 712
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    .line 713
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 714
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->loopCount:I

    .line 716
    :cond_1
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 1

    .line 724
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method protected resetFrame()V
    .locals 1

    .line 731
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->dispose:I

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastDispose:I

    .line 732
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ix:I

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lrx:I

    .line 733
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iy:I

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lry:I

    .line 734
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iw:I

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lrw:I

    .line 735
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ih:I

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lrh:I

    .line 736
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 737
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastBgColor:I

    const/4 v0, 0x0

    .line 738
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->dispose:I

    .line 739
    iput-boolean v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transparency:Z

    .line 740
    iput v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->delay:I

    const/4 v0, 0x0

    .line 741
    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lct:[I

    return-void
.end method

.method protected setPixels()V
    .locals 14

    .line 159
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 161
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastDispose:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-lez v1, :cond_4

    if-ne v1, v9, :cond_1

    .line 164
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->frameCount:I

    sub-int/2addr v1, v11

    if-lez v1, :cond_0

    sub-int/2addr v1, v12

    .line 166
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/picturetool/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 168
    iput-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 171
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    .line 172
    iget v7, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->height:I

    move-object v2, v0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 174
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastDispose:I

    if-ne v1, v11, :cond_4

    .line 177
    iget-boolean v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->transparency:Z

    if-nez v1, :cond_2

    .line 178
    iget v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lastBgColor:I

    goto :goto_1

    :cond_2
    move v1, v10

    :goto_1
    move v2, v10

    .line 180
    :goto_2
    iget v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lrh:I

    if-ge v2, v3, :cond_4

    .line 181
    iget v3, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lry:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->width:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lrx:I

    add-int/2addr v3, v4

    .line 182
    iget v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->lrw:I

    add-int/2addr v4, v3

    :goto_3
    if-ge v3, v4, :cond_3

    .line 184
    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    move v2, v10

    move v3, v12

    .line 194
    :goto_4
    iget v4, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ih:I

    if-ge v10, v4, :cond_d

    .line 196
    iget-boolean v5, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->interlace:Z

    if-eqz v5, :cond_9

    if-lt v2, v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    if-eq v3, v11, :cond_7

    if-eq v3, v9, :cond_6

    if-eq v3, v4, :cond_5

    goto :goto_5

    :cond_5
    move v1, v11

    move v2, v12

    goto :goto_5

    :cond_6
    move v1, v4

    move v2, v11

    goto :goto_5

    :cond_7
    move v2, v4

    :cond_8
    :goto_5
    add-int v4, v2, v1

    goto :goto_6

    :cond_9
    move v4, v2

    move v2, v10

    .line 218
    :goto_6
    iget v5, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iy:I

    add-int/2addr v2, v5

    .line 219
    iget v5, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->height:I

    if-ge v2, v5, :cond_c

    .line 220
    iget v5, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->width:I

    mul-int/2addr v2, v5

    .line 221
    iget v6, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->ix:I

    add-int/2addr v6, v2

    .line 222
    iget v7, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->iw:I

    add-int v8, v6, v7

    add-int v13, v2, v5

    if-ge v13, v8, :cond_a

    add-int v8, v2, v5

    :cond_a
    mul-int/2addr v7, v10

    :goto_7
    if-ge v6, v8, :cond_c

    .line 229
    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->pixels:[B

    add-int/lit8 v5, v7, 0x1

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    .line 230
    iget-object v7, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->act:[I

    aget v2, v7, v2

    if-eqz v2, :cond_b

    .line 232
    aput v2, v0, v6

    :cond_b
    add-int/lit8 v6, v6, 0x1

    move v7, v5

    goto :goto_7

    :cond_c
    add-int/lit8 v10, v10, 0x1

    move v2, v4

    goto :goto_4

    .line 238
    :cond_d
    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 239
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v2, v0

    .line 238
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method protected skip()V
    .locals 1

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->readBlock()I

    .line 750
    iget v0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method
