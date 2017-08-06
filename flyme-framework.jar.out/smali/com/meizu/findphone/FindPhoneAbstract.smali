.class public Lcom/meizu/findphone/FindPhoneAbstract;
.super Ljava/lang/Object;
.source "FindPhoneAbstract.java"


# static fields
.field public static final FINDPHONE_LIMIT_TIME:Ljava/lang/String; = "lockscreen.findphone_limit_time"

.field public static final FINDPHONE_LOCK_TIME_INTERVAL:Ljava/lang/String; = "lockscreen.lock_time_interval"

.field private static final FIND_PHONE_CLASS_NAME:Ljava/lang/String; = "com.meizu.findphone.FindPhoneUtils"

.field static final MAX_LEFT_TIMES:I = 0x8

.field static final TAG:Ljava/lang/String; = "FindphoneAbstract"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;
    .locals 9

    .prologue
    .line 19
    const/4 v3, 0x0

    .line 21
    .local v3, "findPhone":Lcom/meizu/findphone/FindPhoneAbstract;
    :try_start_0
    const-string/jumbo v5, "com.meizu.findphone.FindPhoneUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 22
    .local v4, "findphoneClass":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "findPhone":Lcom/meizu/findphone/FindPhoneAbstract;
    check-cast v3, Lcom/meizu/findphone/FindPhoneAbstract;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v4    # "findphoneClass":Ljava/lang/Class;
    .local v3, "findPhone":Lcom/meizu/findphone/FindPhoneAbstract;
    :goto_0
    return-object v3

    .line 31
    .end local v3    # "findPhone":Lcom/meizu/findphone/FindPhoneAbstract;
    :catch_0
    move-exception v1

    .line 32
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-direct {v3}, Lcom/meizu/findphone/FindPhoneAbstract;-><init>()V

    .line 33
    .restart local v3    # "findPhone":Lcom/meizu/findphone/FindPhoneAbstract;
    const-string/jumbo v5, "FindphoneAbstract"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IllegalAccessException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/Exception;

    .line 34
    const-string/jumbo v8, "com.meizu.findphone.FindPhoneUtils could not be instantiated"

    .line 33
    invoke-direct {v7, v8, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 27
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    .end local v3    # "findPhone":Lcom/meizu/findphone/FindPhoneAbstract;
    :catch_1
    move-exception v2

    .line 28
    .local v2, "ex":Ljava/lang/InstantiationException;
    new-instance v3, Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-direct {v3}, Lcom/meizu/findphone/FindPhoneAbstract;-><init>()V

    .line 29
    .restart local v3    # "findPhone":Lcom/meizu/findphone/FindPhoneAbstract;
    const-string/jumbo v5, "FindphoneAbstract"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "InstantiationException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/Exception;

    .line 30
    const-string/jumbo v8, "com.meizu.findphone.FindPhoneUtils could not be instantiated"

    .line 29
    invoke-direct {v7, v8, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 23
    .end local v2    # "ex":Ljava/lang/InstantiationException;
    .end local v3    # "findPhone":Lcom/meizu/findphone/FindPhoneAbstract;
    :catch_2
    move-exception v0

    .line 24
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-direct {v3}, Lcom/meizu/findphone/FindPhoneAbstract;-><init>()V

    .line 25
    .restart local v3    # "findPhone":Lcom/meizu/findphone/FindPhoneAbstract;
    const-string/jumbo v5, "FindphoneAbstract"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ClassNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/Exception;

    .line 26
    const-string/jumbo v8, "com.meizu.findphone.FindPhoneUtils could not be loaded"

    .line 25
    invoke-direct {v7, v8, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentTime()J
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    .local v0, "now":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 69
    .local v1, "nowTime":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public getCurrentUser()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration(J)J
    .locals 1
    .param p1, "defaultDuration"    # J

    .prologue
    .line 76
    return-wide p1
.end method

.method public getLimitTime(J)J
    .locals 1
    .param p1, "defaultTime"    # J

    .prologue
    .line 63
    return-wide p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    return-void
.end method

.method public isFindphoneLocked()Z
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "FindphoneAbstract"

    const-string/jumbo v1, "now is FindPhoneAbstract, isFindphoneLocked : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public processLeftTimes(Z)I
    .locals 1
    .param p1, "reset"    # Z

    .prologue
    .line 52
    const/16 v0, 0x8

    return v0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 55
    return-void
.end method

.method public updateLimitedTime(Lcom/meizu/flyme/service/find/FindPhoneData;)V
    .locals 0
    .param p1, "data"    # Lcom/meizu/flyme/service/find/FindPhoneData;

    .prologue
    .line 72
    return-void
.end method
