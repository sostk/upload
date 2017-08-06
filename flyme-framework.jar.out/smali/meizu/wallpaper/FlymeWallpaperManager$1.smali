.class Lmeizu/wallpaper/FlymeWallpaperManager$1;
.super Ljava/lang/Object;
.source "FlymeWallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmeizu/wallpaper/FlymeWallpaperManager;->showUnSupportSetWallpaperToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmeizu/wallpaper/FlymeWallpaperManager;


# direct methods
.method constructor <init>(Lmeizu/wallpaper/FlymeWallpaperManager;)V
    .locals 0
    .param p1, "this$0"    # Lmeizu/wallpaper/FlymeWallpaperManager;

    .prologue
    .line 559
    iput-object p1, p0, Lmeizu/wallpaper/FlymeWallpaperManager$1;->this$0:Lmeizu/wallpaper/FlymeWallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 561
    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get1()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lmeizu/wallpaper/FlymeWallpaperManager;->-get1()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$string;->unsupport_set_wallpaper_on_media_eval_system:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 560
    return-void
.end method
