.class Lmeizu/space/MSpaceControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "MSpaceControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmeizu/space/MSpaceControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmeizu/space/MSpaceControllerImpl;


# direct methods
.method constructor <init>(Lmeizu/space/MSpaceControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lmeizu/space/MSpaceControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 46
    iput-object p1, p0, Lmeizu/space/MSpaceControllerImpl$1;->this$0:Lmeizu/space/MSpaceControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 49
    if-eqz p2, :cond_3

    .line 50
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl$1;->this$0:Lmeizu/space/MSpaceControllerImpl;

    invoke-static {v0}, Lmeizu/space/MSpaceControllerImpl;->-get1(Lmeizu/space/MSpaceControllerImpl;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl$1;->this$0:Lmeizu/space/MSpaceControllerImpl;

    invoke-static {v0}, Lmeizu/space/MSpaceControllerImpl;->-get2(Lmeizu/space/MSpaceControllerImpl;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl$1;->this$0:Lmeizu/space/MSpaceControllerImpl;

    invoke-static {v0}, Lmeizu/space/MSpaceControllerImpl;->-wrap1(Lmeizu/space/MSpaceControllerImpl;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl$1;->this$0:Lmeizu/space/MSpaceControllerImpl;

    invoke-static {v0}, Lmeizu/space/MSpaceControllerImpl;->-get0(Lmeizu/space/MSpaceControllerImpl;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl$1;->this$0:Lmeizu/space/MSpaceControllerImpl;

    invoke-static {v0}, Lmeizu/space/MSpaceControllerImpl;->-wrap0(Lmeizu/space/MSpaceControllerImpl;)V

    .line 56
    :cond_2
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl$1;->this$0:Lmeizu/space/MSpaceControllerImpl;

    invoke-static {v0}, Lmeizu/space/MSpaceControllerImpl;->-get3(Lmeizu/space/MSpaceControllerImpl;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lmeizu/space/MSpaceControllerImpl$1;->this$0:Lmeizu/space/MSpaceControllerImpl;

    invoke-static {v0}, Lmeizu/space/MSpaceControllerImpl;->-wrap2(Lmeizu/space/MSpaceControllerImpl;)V

    .line 48
    :cond_3
    return-void
.end method
