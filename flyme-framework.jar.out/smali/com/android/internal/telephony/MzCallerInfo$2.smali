.class Lcom/android/internal/telephony/MzCallerInfo$2;
.super Ljava/lang/Object;
.source "MzCallerInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/MzCallerInfo;->updateGeoDescriptionFromDB(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MzCallerInfo;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MzCallerInfo;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/MzCallerInfo;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$number"    # Ljava/lang/String;
    .param p4, "val$listener"    # Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/internal/telephony/MzCallerInfo$2;->this$0:Lcom/android/internal/telephony/MzCallerInfo;

    iput-object p2, p0, Lcom/android/internal/telephony/MzCallerInfo$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/MzCallerInfo$2;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/MzCallerInfo$2;->val$listener:Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo$2;->this$0:Lcom/android/internal/telephony/MzCallerInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/MzCallerInfo$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/MzCallerInfo$2;->val$number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MzCallerInfo;->-wrap0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MzCallerInfo;->geoDescription:Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/MzCallerInfo$2;->this$0:Lcom/android/internal/telephony/MzCallerInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/MzCallerInfo;->-get0(Lcom/android/internal/telephony/MzCallerInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MzCallerInfo$2;->this$0:Lcom/android/internal/telephony/MzCallerInfo;

    invoke-static {v1}, Lcom/android/internal/telephony/MzCallerInfo;->-get0(Lcom/android/internal/telephony/MzCallerInfo;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MzCallerInfo$2;->val$listener:Lcom/android/internal/telephony/MzCallerInfo$UpdateLocationListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 729
    return-void
.end method
