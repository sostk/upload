.class public Lmeizu/wallpaper/FlymeWallpaperManager;
.super Ljava/lang/Object;
.source "FlymeWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/wallpaper/FlymeWallpaperManager$FastBitmapDrawable;,
        Lmeizu/wallpaper/FlymeWallpaperManager$Globals;
    }
.end annotation


# static fields
.field public static final BLUR_LAYER_FRAME_SIZE:I = 0xa

.field private static DEBUG:Z = false

.field public static final MAX_BLUR_SIZE:I = 0x56

.field public static final MIN_SIZE:I = 0xc8

.field public static SMART_WALLPAPER_DIR_NAME:Ljava/lang/String;

.field public static SMART_WALLPAPER_SOURCE_FILE_PREFIX:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lmeizu/wallpaper/FlymeWallpaperManager;

.field private static sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private mService:Lmeizu/wallpaper/IFlymeWallpaper;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2()Lmeizu/wallpaper/FlymeWallpaperManager$Globals;
    .locals 1

    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const-string/jumbo v0, "FlymeWallpaperManager"

    sput-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lmeizu/wallpaper/FlymeWallpaperManager;->DEBUG:Z

    .line 61
    const-string/jumbo v0, "smart_target_"

    sput-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->SMART_WALLPAPER_SOURCE_FILE_PREFIX:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "/FlymeWallpaper"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->SMART_WALLPAPER_DIR_NAME:Ljava/lang/String;

    .line 472
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sSync:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string/jumbo v1, "flyme_wallpaper"

    .line 70
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 72
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/wallpaper/IFlymeWallpaper$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v1

    iput-object v1, p0, Lmeizu/wallpaper/FlymeWallpaperManager;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    .line 73
    sput-object p1, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lmeizu/wallpaper/FlymeWallpaperManager;->initGlobals(Landroid/content/Context;)V

    .line 75
    sget-object v1, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FlymeWallpaperManager init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmeizu/wallpaper/FlymeWallpaperManager;->mService:Lmeizu/wallpaper/IFlymeWallpaper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->mInstance:Lmeizu/wallpaper/FlymeWallpaperManager;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Lmeizu/wallpaper/FlymeWallpaperManager;

    invoke-direct {v0, p0}, Lmeizu/wallpaper/FlymeWallpaperManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->mInstance:Lmeizu/wallpaper/FlymeWallpaperManager;

    .line 487
    :cond_0
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->mInstance:Lmeizu/wallpaper/FlymeWallpaperManager;

    return-object v0
.end method

.method static initGlobals(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 476
    sget-object v1, Lmeizu/wallpaper/FlymeWallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_0
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    invoke-direct {v0, p0}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 475
    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setLockWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 595
    const v2, 0x8000

    new-array v1, v2, [B

    .line 597
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 598
    invoke-virtual {p2, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 594
    :cond_0
    return-void
.end method

.method private showUnSupportSetWallpaperToast()V
    .locals 2

    .prologue
    .line 558
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 559
    .local v0, "handlerToast":Landroid/os/Handler;
    new-instance v1, Lmeizu/wallpaper/FlymeWallpaperManager$1;

    invoke-direct {v1, p0}, Lmeizu/wallpaper/FlymeWallpaperManager$1;-><init>(Lmeizu/wallpaper/FlymeWallpaperManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    return-void
.end method


# virtual methods
.method public clearLockWallpaper()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    sget-object v1, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;->LOCK:Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    .line 620
    invoke-static {v1, v2}, Landroid/app/WallpaperManager;->getFlymeDefWallpaper(Landroid/content/Context;Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;)Ljava/io/InputStream;

    move-result-object v0

    .line 622
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v0}, Lmeizu/wallpaper/FlymeWallpaperManager;->setStreamToLockWallpaper(Ljava/io/InputStream;)V

    .line 623
    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 619
    :cond_0
    return-void
.end method

.method public forgetLoadedLockWallpaper()V
    .locals 1

    .prologue
    .line 629
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    invoke-virtual {v0}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->forgetLoadedLockWallpaper()V

    .line 628
    return-void
.end method

.method public getDrawableOfLockWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 495
    sget-object v2, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getDrawableOfLockWallpaper"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object v2, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    sget-object v3, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 497
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 498
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 499
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 500
    return-object v1

    .line 502
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v5
.end method

.method public getIFlymeWallpaper()Lmeizu/wallpaper/IFlymeWallpaper;
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    invoke-static {v0}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->-get0(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 615
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getLockWallpaperBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    sget-object v1, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSmartWallpaperTarget()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 603
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    invoke-virtual {v0}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->getSmartWallpaperTarget()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setBitmapToLockWallpaper(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    sget-object v4, Landroid/os/BuildExt;->IS_MEDIA_EVAL:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 532
    invoke-direct {p0}, Lmeizu/wallpaper/FlymeWallpaperManager;->showUnSupportSetWallpaperToast()V

    .line 533
    new-instance v4, Ljava/io/IOException;

    sget-object v5, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    sget v6, Lcom/flyme/internal/R$string;->unsupport_set_wallpaper_on_media_eval_system:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 535
    :cond_0
    sget-object v4, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    invoke-static {v4}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->-get0(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v4

    if-nez v4, :cond_1

    .line 536
    sget-object v4, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 540
    :cond_1
    :try_start_0
    sget-object v4, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    invoke-static {v4}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->-get0(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lmeizu/wallpaper/IFlymeWallpaper;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 541
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_2

    .line 542
    return-void

    .line 544
    :cond_2
    const/4 v2, 0x0

    .line 546
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    const/16 v5, 0x5a

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 549
    if-eqz v3, :cond_3

    .line 550
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 530
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_0
    return-void

    .line 548
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    .line 549
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_4

    .line 550
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 548
    :cond_4
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 553
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 548
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setResourceToLockWallpaper(I)V
    .locals 8
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    sget-object v5, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    invoke-static {v5}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->-get0(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v5

    if-nez v5, :cond_0

    .line 507
    sget-object v5, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void

    .line 511
    :cond_0
    :try_start_0
    sget-object v5, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 513
    .local v4, "resources":Landroid/content/res/Resources;
    sget-object v5, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    invoke-static {v5}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->-get0(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "res:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 514
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    .line 513
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lmeizu/wallpaper/IFlymeWallpaper;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 515
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 516
    const/4 v2, 0x0

    .line 518
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    move-result-object v5

    invoke-direct {p0, v5, v3}, Lmeizu/wallpaper/FlymeWallpaperManager;->setLockWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 521
    if-eqz v3, :cond_1

    .line 522
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 505
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    return-void

    .line 520
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v5

    .line 521
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_2

    .line 522
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 520
    :cond_2
    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 526
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 520
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setSmartWallpaperTarget(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    sget-object v0, Landroid/os/BuildExt;->IS_MEDIA_EVAL:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-direct {p0}, Lmeizu/wallpaper/FlymeWallpaperManager;->showUnSupportSetWallpaperToast()V

    .line 609
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/flyme/internal/R$string;->unsupport_set_wallpaper_on_media_eval_system:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    sget-object v0, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    sget-object v1, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->setSmartWallpaperTarget(Landroid/graphics/Bitmap;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setStreamToLockWallpaper(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    sget-object v4, Landroid/os/BuildExt;->IS_MEDIA_EVAL:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 568
    invoke-direct {p0}, Lmeizu/wallpaper/FlymeWallpaperManager;->showUnSupportSetWallpaperToast()V

    .line 569
    new-instance v4, Ljava/io/IOException;

    sget-object v5, Lmeizu/wallpaper/FlymeWallpaperManager;->mContext:Landroid/content/Context;

    sget v6, Lcom/flyme/internal/R$string;->unsupport_set_wallpaper_on_media_eval_system:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 571
    :cond_0
    sget-object v4, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    invoke-static {v4}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->-get0(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v4

    if-nez v4, :cond_1

    .line 572
    sget-object v4, Lmeizu/wallpaper/FlymeWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void

    .line 576
    :cond_1
    :try_start_0
    sget-object v4, Lmeizu/wallpaper/FlymeWallpaperManager;->sGlobals:Lmeizu/wallpaper/FlymeWallpaperManager$Globals;

    invoke-static {v4}, Lmeizu/wallpaper/FlymeWallpaperManager$Globals;->-get0(Lmeizu/wallpaper/FlymeWallpaperManager$Globals;)Lmeizu/wallpaper/IFlymeWallpaper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lmeizu/wallpaper/IFlymeWallpaper;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 577
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_2

    .line 578
    return-void

    .line 580
    :cond_2
    const/4 v2, 0x0

    .line 582
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v3}, Lmeizu/wallpaper/FlymeWallpaperManager;->setLockWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 585
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_3

    .line 586
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 566
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_0
    return-void

    .line 584
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    .line 585
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_4

    .line 586
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 584
    :cond_4
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 589
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 584
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
