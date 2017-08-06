.class Lcom/meizu/server/AccessControlService$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/AccessControlService;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/AccessControlService;


# direct methods
.method constructor <init>(Lcom/meizu/server/AccessControlService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/server/AccessControlService;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/meizu/server/AccessControlService$1;->this$0:Lcom/meizu/server/AccessControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 126
    const-string/jumbo v5, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, "pkgList":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 129
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 132
    new-array v3, v6, [Ljava/lang/String;

    .line 133
    .end local v3    # "pkgList":[Ljava/lang/String;
    aput-object v2, v3, v4

    .line 137
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    array-length v5, v3

    if-lez v5, :cond_1

    .line 138
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    .line 140
    .restart local v2    # "pkg":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/meizu/server/AccessControlService$1;->this$0:Lcom/meizu/server/AccessControlService;

    .line 142
    const/4 v7, 0x1

    .line 140
    invoke-virtual {v6, v2, v7}, Lcom/meizu/server/AccessControlService;->removeControlPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    return-void

    .line 143
    .restart local v0    # "data":Landroid/net/Uri;
    .restart local v2    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1
.end method
