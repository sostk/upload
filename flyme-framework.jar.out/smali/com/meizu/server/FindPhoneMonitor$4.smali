.class Lcom/meizu/server/FindPhoneMonitor$4;
.super Landroid/content/BroadcastReceiver;
.source "FindPhoneMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/FindPhoneMonitor;->registerPackageChangedRecever()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FindPhoneMonitor;


# direct methods
.method constructor <init>(Lcom/meizu/server/FindPhoneMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/server/FindPhoneMonitor;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$4;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x5

    .line 176
    if-nez p2, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 180
    .local v0, "data":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 181
    return-void

    .line 183
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/meizu/server/FindPhoneMonitor;->-get0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;

    .line 185
    .local v1, "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    iget-object v4, v1, Lcom/meizu/server/FindPhoneMonitor$ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PackageChanged.pkgName == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/server/FindPhoneMonitor;->-wrap8(Ljava/lang/String;)V

    .line 187
    iget-object v4, p0, Lcom/meizu/server/FindPhoneMonitor$4;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v4}, Lcom/meizu/server/FindPhoneMonitor;->-get1(Lcom/meizu/server/FindPhoneMonitor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object v4, p0, Lcom/meizu/server/FindPhoneMonitor$4;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v4}, Lcom/meizu/server/FindPhoneMonitor;->-get1(Lcom/meizu/server/FindPhoneMonitor;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    .end local v1    # "info":Lcom/meizu/server/FindPhoneMonitor$ApkInfo;
    :cond_3
    return-void
.end method
