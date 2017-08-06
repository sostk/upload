.class Lmeizu/wallpaper/FlymeWallpaperManager$Globals;
.super Lmeizu/wallpaper/IFlymeWallpaperCallback$Stub;
.source "FlymeWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/wallpaper/FlymeWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_LOCK_WALLPAPER:I = 0x1

.field static final SMART_WALLPAPER_TARGET:Ljava/lang/String; = "smart_wallpaper_target"


# instance fields
.field private SCREEN_H:I

.field private SCREEN_W:I

.field private mDefaultLockWallpaper:Landroid/graphics/Bitmap;

.field private mLockWallpaper:Landroid/graphics/Bitmap;

.field private mService:Lmeizu/wallpaper/IFlymeWallpaper;

.field private mSmartWallpapaerTarget:Landroid/graphics/Bitmap;


# direct methods
.method static synthetic -get0(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;
    .locals 1

    iget-object v0, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 169
    invoke-direct {p0}, Lmeizu/wallpaper/IFlymeWallpaperCallback$Stub;-><init>()V

    .line 162
    iput v4, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_W:I

    .line 163
    iput v4, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_H:I

    .line 171
    const-string/jumbo v4, "flyme_wallpaper"

    .line 170
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 172
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/wallpaper/IFlymeWallpaper$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v4

    iput-object v4, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    .line 173
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 175
    .local v2, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    .line 174
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 176
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 177
    .local v1, "d":Landroid/view/Display;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 178
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_W:I

    .line 179
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_H:I

    .line 180
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SCREEN_W: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_W:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " SCREEN_H: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_H:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method private getCurrentLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 226
    const/4 v3, 0x0

    .line 228
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 229
    .local v6, "params":Landroid/os/Bundle;
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get2()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    move-result-object v8

    iget-object v8, v8, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    .line 230
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get2()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    move-result-object v9

    .line 229
    invoke-interface {v8, v9, v6}, Lmeizu/wallpaper/IFlymeWallpaper;->getLockWallpaper(Lmeizu/wallpaper/IFlymeWallpaperCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 231
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_5

    .line 232
    const-string/jumbo v8, "width"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 233
    .local v7, "width":I
    const-string/jumbo v8, "height"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 234
    .local v4, "height":I
    if-lez v7, :cond_0

    if-gtz v4, :cond_3

    .line 236
    :cond_0
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 235
    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 238
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_1
    if-eqz v3, :cond_2

    .line 258
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    :cond_2
    :goto_0
    return-object v0

    .line 260
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 242
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 243
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 244
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 246
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    .line 245
    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 257
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 258
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 248
    :cond_4
    :goto_1
    return-object v0

    .line 260
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 257
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "height":I
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "width":I
    :cond_5
    if-eqz v3, :cond_6

    .line 258
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 264
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "params":Landroid/os/Bundle;
    :cond_6
    :goto_2
    return-object v11

    .line 260
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "params":Landroid/os/Bundle;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 254
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "params":Landroid/os/Bundle;
    :catch_3
    move-exception v1

    .line 257
    .local v1, "e":Landroid/os/RemoteException;
    if-eqz v3, :cond_6

    .line 258
    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 260
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 255
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 257
    if-eqz v3, :cond_7

    .line 258
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 255
    :cond_7
    :goto_3
    throw v8

    .line 260
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method private getDefaultLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 279
    sget-object v6, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;->LOCK:Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    .line 278
    invoke-static {p1, v6}, Landroid/app/WallpaperManager;->getFlymeDefWallpaper(Landroid/content/Context;Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;)Ljava/io/InputStream;

    move-result-object v3

    .line 281
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 282
    iget v5, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_W:I

    .line 283
    .local v5, "width":I
    iget v2, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->SCREEN_H:I

    .line 284
    .local v2, "height":I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 285
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 286
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 287
    invoke-static {v3, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 289
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-object v0

    .line 290
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 300
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "height":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "width":I
    :cond_0
    return-object v7
.end method

.method private prepareBlurSourceFileToSD(Landroid/content/Context;)Z
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    new-instance v12, Lmeizu/wallpaper/NativeGaussBlur;

    invoke-direct {v12}, Lmeizu/wallpaper/NativeGaussBlur;-><init>()V

    .line 372
    .local v12, "nativeGaussBlur":Lmeizu/wallpaper/NativeGaussBlur;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->getCurrentLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 375
    .local v11, "lockWallpaperBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    .line 376
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    .line 377
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 374
    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 378
    .local v15, "smallBitmap":Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 379
    .local v16, "sourceCanvas":Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 380
    .local v17, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 381
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 380
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 382
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 383
    .local v7, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    .line 384
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    .line 383
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 385
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 386
    .local v13, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1, v7, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 388
    const/4 v8, 0x0

    .local v8, "dstW":I
    const/4 v6, 0x0

    .line 389
    .local v6, "dstH":I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 390
    const/16 v8, 0xc8

    .line 391
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xc8

    move/from16 v18, v0

    .line 392
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 391
    div-int v6, v18, v19

    .line 399
    :goto_0
    const/16 v18, 0x0

    .line 398
    move/from16 v0, v18

    invoke-static {v15, v8, v6, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 400
    .local v14, "sBmp":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_3

    .line 402
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    .line 403
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 404
    .local v5, "b":Landroid/graphics/Bitmap;
    add-int/lit8 v18, v10, 0x1

    mul-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v5, v0}, Lmeizu/wallpaper/NativeGaussBlur;->blur(Landroid/graphics/Bitmap;F)V

    .line 405
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1, v10}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->writeBlurSourceFileToSD(Landroid/graphics/Bitmap;Landroid/content/Context;I)V

    .line 406
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_0

    .line 407
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 408
    const/4 v5, 0x0

    .line 402
    .end local v5    # "b":Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 394
    .end local v10    # "i":I
    .end local v14    # "sBmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xc8

    move/from16 v18, v0

    .line 395
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 394
    div-int v8, v18, v19

    .line 396
    const/16 v6, 0xc8

    goto :goto_0

    .line 411
    .restart local v10    # "i":I
    .restart local v14    # "sBmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_3

    .line 412
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 413
    const/4 v14, 0x0

    .line 416
    .end local v10    # "i":I
    .end local v14    # "sBmp":Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 420
    .end local v15    # "smallBitmap":Landroid/graphics/Bitmap;
    :cond_4
    :goto_2
    const/16 v18, 0x1

    return v18

    .line 417
    .restart local v15    # "smallBitmap":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    const/4 v15, 0x0

    .local v15, "smallBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 421
    .end local v6    # "dstH":I
    .end local v7    # "dstRect":Landroid/graphics/Rect;
    .end local v8    # "dstW":I
    .end local v11    # "lockWallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v15    # "smallBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "sourceCanvas":Landroid/graphics/Canvas;
    .end local v17    # "srcRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v9

    .line 422
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 423
    const/16 v18, 0x0

    return v18
.end method

.method private writeBlurSourceFileToSD(Landroid/graphics/Bitmap;Landroid/content/Context;I)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "index"    # I

    .prologue
    .line 429
    if-eqz p1, :cond_2

    .line 430
    const/4 v6, 0x0

    .line 431
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 434
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v8, Lmeizu/wallpaper/FlymeWallpaperManager;->SMART_WALLPAPER_DIR_NAME:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 439
    :goto_0
    new-instance v5, Ljava/io/File;

    sget-object v8, Lmeizu/wallpaper/FlymeWallpaperManager;->SMART_WALLPAPER_DIR_NAME:Ljava/lang/String;

    .line 440
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lmeizu/wallpaper/FlymeWallpaperManager;->SMART_WALLPAPER_SOURCE_FILE_PREFIX:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 439
    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 442
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 446
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 448
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .line 447
    invoke-virtual {p1, v8, v9, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 449
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 452
    .local v0, "bitmapdata":[B
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 453
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 458
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    if-eqz v7, :cond_1

    .line 459
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 461
    :cond_1
    if-eqz v2, :cond_2

    .line 462
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 428
    .end local v0    # "bitmapdata":[B
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "dir":Ljava/io/File;
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 436
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 454
    .end local v3    # "dir":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 458
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v6, :cond_4

    .line 459
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 461
    :cond_4
    if-eqz v1, :cond_2

    .line 462
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 464
    :catch_1
    move-exception v4

    goto :goto_1

    .line 456
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v8

    .line 458
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v6, :cond_5

    .line 459
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 461
    :cond_5
    if-eqz v1, :cond_6

    .line 462
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 456
    :cond_6
    :goto_4
    throw v8

    .line 464
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 456
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmapdata":[B
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 454
    .end local v0    # "bitmapdata":[B
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmapdata":[B
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 464
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_1
.end method


# virtual methods
.method public forgetLoadedLockWallpaper()V
    .locals 1

    .prologue
    .line 219
    monitor-enter p0

    .line 220
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 218
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSmartWallpaperTarget()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 332
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get2()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    move-result-object v5

    iget-object v5, v5, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    if-nez v5, :cond_0

    .line 333
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-object v7

    .line 336
    :cond_0
    const/4 v3, 0x0

    .line 338
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get2()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    move-result-object v5

    iget-object v5, v5, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    .line 339
    const/4 v6, 0x0

    .line 338
    invoke-interface {v5, v6}, Lmeizu/wallpaper/IFlymeWallpaper;->setSmartWallpaperTarget(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 340
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_2

    .line 341
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 342
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 343
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 345
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    .line 344
    invoke-static {v5, v6, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    .local v0, "bm":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mSmartWallpapaerTarget:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    if-eqz v3, :cond_1

    .line 359
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    :cond_1
    :goto_0
    return-object v0

    .line 361
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 358
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    if-eqz v3, :cond_3

    .line 359
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 365
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    :goto_1
    return-object v7

    .line 361
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 354
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v1

    .line 358
    .local v1, "e":Landroid/os/RemoteException;
    if-eqz v3, :cond_3

    .line 359
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 361
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 356
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 358
    if-eqz v3, :cond_4

    .line 359
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 356
    :cond_4
    :goto_2
    throw v5

    .line 361
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public onLockWallpaperChanged()V
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLockWallpaperChanged , clear cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-enter p0

    .line 186
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 183
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 197
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 200
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :try_start_3
    invoke-direct {p0, p1}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->getCurrentLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    :goto_0
    :try_start_4
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 208
    :try_start_5
    invoke-direct {p0, p1}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->getDefaultLockWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 212
    :goto_1
    :try_start_6
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mDefaultLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "No memory load current lock wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 209
    :catch_1
    move-exception v0

    .line 210
    .restart local v0    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_8
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "No memory load current lock wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 214
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mLockWallpaper:Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public setSmartWallpaperTarget(Landroid/graphics/Bitmap;Landroid/content/Context;)Z
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 305
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get2()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    move-result-object v4

    iget-object v4, v4, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    if-nez v4, :cond_0

    .line 306
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return v6

    .line 310
    :cond_0
    :try_start_0
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get2()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    move-result-object v4

    iget-object v4, v4, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    .line 311
    const/4 v5, 0x0

    .line 310
    invoke-interface {v4, v5}, Lmeizu/wallpaper/IFlymeWallpaper;->setSmartWallpaperTarget(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 312
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 313
    return v6

    .line 315
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->mSmartWallpapaerTarget:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    const/4 v2, 0x0

    .line 318
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    const/16 v5, 0x5a

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    if-eqz v3, :cond_2

    .line 322
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 325
    :cond_2
    invoke-direct {p0, p2}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->prepareBlurSourceFileToSD(Landroid/content/Context;)Z

    move-result v4

    return v4

    .line 320
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    .line 321
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v2, :cond_3

    .line 322
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 320
    :cond_3
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 326
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    return v6

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
