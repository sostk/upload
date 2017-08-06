.class public Lcom/meizu/findphone/FindPhoneService;
.super Ljava/lang/Object;
.source "FindPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/findphone/FindPhoneService$1;
    }
.end annotation


# static fields
.field public static final FLYME_CHECK_PASSWORD:Z = true

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.password.key"

.field public static final MAX_TIMES_OF_CHECK_PASSWORD:I = 0xf

.field public static final PASSWORD_TYPE_LEFT_COUNT:Ljava/lang/String; = "lockscreen.password_left_count"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "FindPhoneService"

.field private static final mFileName:Ljava/lang/String; = "keyguard_findphone.log"


# instance fields
.field df:Ljava/text/DateFormat;

.field private mContext:Landroid/content/Context;

.field mFindPhoneConnection:Landroid/content/ServiceConnection;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mPasswordLeftTimes:I


# direct methods
.method static synthetic -get0(Lcom/meizu/findphone/FindPhoneService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/findphone/FindPhoneService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0xf

    iput v0, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/findphone/FindPhoneService;->df:Ljava/text/DateFormat;

    .line 45
    new-instance v0, Lcom/meizu/findphone/FindPhoneService$1;

    invoke-direct {v0, p0}, Lcom/meizu/findphone/FindPhoneService$1;-><init>(Lcom/meizu/findphone/FindPhoneService;)V

    iput-object v0, p0, Lcom/meizu/findphone/FindPhoneService;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    .line 71
    iput-object p2, p0, Lcom/meizu/findphone/FindPhoneService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 72
    iput-object p1, p0, Lcom/meizu/findphone/FindPhoneService;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method private getLockPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    const-string/jumbo v2, "/system/"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "gatekeeper.password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 101
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "gatekeeper.password.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/meizu/findphone/FindPhoneService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 158
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/findphone/FindPhoneService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/meizu/findphone/FindPhoneService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private maybeUpdateKeystore(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 107
    if-nez p2, :cond_0

    .line 108
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 111
    .local v0, "keyStore":Landroid/security/KeyStore;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/security/KeyStore;->reset()Z

    .line 106
    .end local v0    # "keyStore":Landroid/security/KeyStore;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkPassword(Z)Z
    .locals 7
    .param p1, "passwordOK"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "ret":Z
    const-string/jumbo v2, "FindPhoneService"

    const-string/jumbo v3, "checkPassword"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz p1, :cond_1

    .line 126
    const/16 v2, 0xf

    iput v2, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 130
    :goto_0
    const-string/jumbo v2, "FindPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mPasswordLeftTimes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneService;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string/jumbo v3, "lockscreen.password_left_count"

    iget v4, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 132
    iget v2, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    if-gtz v2, :cond_0

    .line 133
    const-string/jumbo v2, "FindPhoneService"

    const-string/jumbo v3, "begin bindservice-------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-class v2, Lcom/meizu/flyme/service/find/IPhoneLocationService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v2, "com.meizu.flyme.service.find"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v2, p0, Lcom/meizu/findphone/FindPhoneService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/findphone/FindPhoneService;->mFindPhoneConnection:Landroid/content/ServiceConnection;

    .line 138
    const/4 v4, 0x1

    .line 137
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 140
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return p1

    .line 128
    :cond_1
    iget v2, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    goto :goto_0
.end method

.method public processLeftTimes(Z)I
    .locals 6
    .param p1, "reset"    # Z

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    const/16 v1, 0xf

    iput v1, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneService;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.password_left_count"

    iget v3, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    int-to-long v4, v3

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    const-string/jumbo v1, "FindPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processLeftTimes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v1, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    const/16 v0, 0xf

    iput v0, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 90
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneService;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.password_left_count"

    iget v2, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 88
    return-void
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneService;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.password_left_count"

    const-wide/16 v4, 0xf

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 78
    const-string/jumbo v1, "FindPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LockSettingsService systemReady, now mPasswordLeftTimes is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget v1, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    if-ge v1, v6, :cond_0

    .line 80
    const/16 v1, 0xf

    iput v1, p0, Lcom/meizu/findphone/FindPhoneService;->mPasswordLeftTimes:I

    .line 81
    invoke-direct {p0}, Lcom/meizu/findphone/FindPhoneService;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string/jumbo v2, "lockscreen.password_left_count"

    const-wide/16 v4, 0xf

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
