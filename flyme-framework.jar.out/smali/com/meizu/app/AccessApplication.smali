.class public Lcom/meizu/app/AccessApplication;
.super Landroid/app/Activity;
.source "AccessApplication.java"

# interfaces
.implements Lcom/meizu/widget/SystemLockView$OnPanelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/app/AccessApplication$1;,
        Lcom/meizu/app/AccessApplication$2;
    }
.end annotation


# static fields
.field private static final APP_LOCK_FILE:Ljava/lang/String; = "app_lock.key"

.field private static final ERROR_COUNT_SHOW_FORGET_PASSWORD:I = 0x3

.field private static final MAX_TASKS:I = 0xa

.field private static final MSG_FP_TIME_OUT:I = 0x4

.field private static final MSG_FP_VERIFY_UPDATE:I = 0x1

.field private static final MSG_TYPE_RECONGNIZE_FAILED:I = 0x3

.field private static final MSG_TYPE_RECONGNIZE_SUCCESS:I = 0x2

.field private static final PASSWORD_LENGTH_DEFAULT:I = 0x4

.field private static final PASSWORD_TYPE_COMPLEX:I = 0x1

.field private static final REQUEST_CODE_FLYME_ACCOUNT_VERIFY:I = 0x64

.field public static final RESULT_CODE_VALIDATE_PASSWORD_ERROR:I = 0x3e7

.field private static final TAG:Ljava/lang/String; = "AccessApplication"


# instance fields
.field private final DEBUG:Z

.field private isAssociateAccountOpened:Z

.field private mAccessCls:Ljava/lang/String;

.field private mAccessControlManager:Lmeizu/security/AccessControlManager;

.field private mAccessPkg:Ljava/lang/String;

.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mCancelView:Landroid/view/View;

.field private mComponentName:Landroid/content/ComponentName;

.field private mEmergencyLayout:Landroid/view/View;

.field private mErrorPwdCount:I

.field private mFindPhoneReceiver:Landroid/content/BroadcastReceiver;

.field private mFingerprintCancelSignal:Landroid/os/CancellationSignal;

.field private mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

.field private mForgetPasswordLayout:Landroid/view/View;

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromNotification:Z

.field private mHandler:Landroid/os/Handler;

.field private mIPm:Landroid/content/pm/IPackageManager;

.field private mIntent:Landroid/content/Intent;

.field private mIsFromFlymeLauncher:Z

.field private mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

.field private mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPackageName:Ljava/lang/String;

.field private mPasswordType:I

.field private mPause:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeoutCount:I

.field private mVerifyIsOk:Z


# direct methods
.method static synthetic -get0(Lcom/meizu/app/AccessApplication;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/app/AccessApplication;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/app/AccessApplication;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    return v0
.end method

.method static synthetic -get3(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/meizu/app/AccessApplication;)I
    .locals 1

    iget v0, p0, Lcom/meizu/app/AccessApplication;->mTimeoutCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/meizu/app/AccessApplication;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic -set1(Lcom/meizu/app/AccessApplication;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/app/AccessApplication;->mTimeoutCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/meizu/app/AccessApplication;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/app/AccessApplication;->mVerifyIsOk:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/app/AccessApplication;->checkPassword(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/meizu/app/AccessApplication;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->getFlymeAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/meizu/app/AccessApplication;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/app/AccessApplication;->startVerifyFlymeAccount(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/meizu/app/AccessApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->checkAppAccesstrol()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/meizu/app/AccessApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->checkNeedShowForgetPassword()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/meizu/app/AccessApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->handleForgetPasswordClick()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/meizu/app/AccessApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->startEmergencyDialer()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/meizu/app/AccessApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->startIdentiedComp()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/meizu/app/AccessApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->startLauncherIdentiedComp()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/meizu/app/AccessApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->startListeningForFingerprint()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/meizu/app/AccessApplication;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/app/AccessApplication;->startShakeAnim(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    iput-boolean v0, p0, Lcom/meizu/app/AccessApplication;->DEBUG:Z

    .line 105
    iput v0, p0, Lcom/meizu/app/AccessApplication;->mTimeoutCount:I

    .line 110
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 113
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 116
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 118
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    .line 119
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 122
    iput v0, p0, Lcom/meizu/app/AccessApplication;->mErrorPwdCount:I

    .line 135
    iput-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    .line 138
    iput-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mVerifyIsOk:Z

    .line 140
    iput-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mPause:Z

    .line 706
    new-instance v0, Lcom/meizu/app/AccessApplication$1;

    invoke-direct {v0, p0}, Lcom/meizu/app/AccessApplication$1;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mHandler:Landroid/os/Handler;

    .line 912
    new-instance v0, Lcom/meizu/app/AccessApplication$2;

    invoke-direct {v0, p0}, Lcom/meizu/app/AccessApplication$2;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 87
    return-void
.end method

.method private checkAccessControl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 643
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v0, p1}, Lmeizu/security/AccessControlManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v0

    .line 643
    if-eqz v0, :cond_1

    .line 645
    :cond_0
    return v3

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v0}, Lmeizu/security/AccessControlManager;->isAccessControlGuardEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 648
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v0}, Lmeizu/security/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v0

    .line 647
    if-eqz v0, :cond_4

    .line 649
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "access_control_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 652
    const/4 v0, 0x1

    return v0

    .line 654
    :cond_3
    return v3

    .line 657
    :cond_4
    return v3
.end method

.method private checkAppAccesstrol()V
    .locals 2

    .prologue
    .line 377
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/meizu/app/AccessApplication;->checkAccessControl(Ljava/lang/String;)Z

    move-result v0

    .line 378
    .local v0, "access":Z
    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 376
    :cond_0
    return-void
.end method

.method private checkNeedShowForgetPassword()V
    .locals 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->isAssociateAccountOpened:Z

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    iget v0, p0, Lcom/meizu/app/AccessApplication;->mErrorPwdCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/app/AccessApplication;->mErrorPwdCount:I

    .line 341
    iget v0, p0, Lcom/meizu/app/AccessApplication;->mErrorPwdCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 342
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/app/AccessApplication;->setForgetButtonVisibility(Z)V

    .line 337
    :cond_1
    return-void
.end method

.method private checkPassword(Ljava/lang/String;)Z
    .locals 12
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 829
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 830
    const-string/jumbo v9, "/system/"

    .line 829
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 830
    const-string/jumbo v9, "app_lock.key"

    .line 829
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "r"

    invoke-direct {v6, v0, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .local v6, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v7, v8, [B

    .line 835
    .local v7, "stored":[B
    array-length v8, v7

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 836
    .local v2, "got":I
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 837
    if-gtz v2, :cond_0

    .line 838
    return v11

    .line 841
    :cond_0
    iget-object v8, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 842
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 841
    invoke-virtual {v8, p1, v9}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v3

    .line 843
    .local v3, "hash":[B
    invoke-static {v7, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 845
    .local v5, "matched":Z
    return v5

    .line 848
    .end local v2    # "got":I
    .end local v3    # "hash":[B
    .end local v5    # "matched":Z
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    :catch_0
    move-exception v4

    .line 849
    .local v4, "ioe":Ljava/io/IOException;
    const-string/jumbo v8, "AccessApplication"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    .end local v4    # "ioe":Ljava/io/IOException;
    :goto_0
    return v11

    .line 846
    :catch_1
    move-exception v1

    .line 847
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v8, "AccessApplication"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearAppLock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mz_app_lock_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    const-string/jumbo v2, "access_control"

    .line 385
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmeizu/security/IAccessControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/security/IAccessControlManager;

    move-result-object v0

    .line 388
    .local v0, "acs":Lmeizu/security/IAccessControlManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Lmeizu/security/IAccessControlManager;->setAccessControlPasswordEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private createCancelClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/meizu/app/AccessApplication$6;

    invoke-direct {v0, p0}, Lcom/meizu/app/AccessApplication$6;-><init>(Lcom/meizu/app/AccessApplication;)V

    return-object v0
.end method

.method private enterFPVerifySession()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->startListeningForFingerprint()V

    .line 468
    return-void
.end method

.method private fingerprintUsedAsUnlock()Z
    .locals 4

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 490
    const-string/jumbo v2, "mz_fingerprint_use_unlock"

    const/4 v3, 0x0

    .line 489
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 490
    const/4 v2, 0x1

    .line 489
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 493
    .local v0, "usedAsUnlock":Z
    :goto_0
    return v0

    .line 489
    .end local v0    # "usedAsUnlock":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "usedAsUnlock":Z
    goto :goto_0
.end method

.method private getFlymeAccountName()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 252
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v3, "com.meizu.account"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 253
    .local v7, "accounts":[Landroid/accounts/Account;
    const-string/jumbo v6, ""

    .line 254
    .local v6, "accountName":Ljava/lang/String;
    if-eqz v7, :cond_1

    array-length v0, v7

    if-lez v0, :cond_1

    .line 256
    const-string/jumbo v0, "content://com.meizu.account/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aget-object v3, v7, v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 255
    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 257
    .local v1, "queryAccountUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 258
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const-string/jumbo v0, "flyme"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 260
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "@flyme.cn"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 263
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 267
    .end local v1    # "queryAccountUri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "name":Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method private handleForgetPasswordClick()V
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.meizu.account.service.MzAccountBusinessService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "source"

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string/jumbo v1, "com.meizu.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    new-instance v1, Lcom/meizu/app/AccessApplication$5;

    invoke-direct {v1, p0}, Lcom/meizu/app/AccessApplication$5;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

    .line 327
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/app/AccessApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 279
    return-void
.end method

.method private initAccessControlData()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 182
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 183
    const-string/jumbo v0, "access_control"

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/security/AccessControlManager;

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 184
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 185
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v0}, Landroid/content/IntentExt;->getAccessPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v0, v0, Landroid/content/ActivityInfoExt;->mAccessPkg:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v0}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    .line 193
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v0, v0, Landroid/content/ActivityInfoExt;->mStartComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    .line 196
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mAccessSrcPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessPkg:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mAccessSrcClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessCls:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessCls:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    const-string/jumbo v0, "com.android.contacts"

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 181
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 192
    goto :goto_0

    .line 200
    :cond_6
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mAccessPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mAccessCls:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    .line 201
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    goto :goto_1
.end method

.method private initCancelText()V
    .locals 2

    .prologue
    .line 236
    sget v0, Lcom/flyme/internal/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mCancelView:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mCancelView:Landroid/view/View;

    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->createCancelClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    sget v0, Lcom/flyme/internal/R$id;->cancel_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 239
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->createCancelClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    sget v0, Lcom/flyme/internal/R$id;->forget_pwd_layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mForgetPasswordLayout:Landroid/view/View;

    .line 242
    sget v0, Lcom/flyme/internal/R$id;->forget_pwd:I

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/app/AccessApplication$4;

    invoke-direct {v1, p0}, Lcom/meizu/app/AccessApplication$4;-><init>(Lcom/meizu/app/AccessApplication;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/app/AccessApplication;->setForgetButtonVisibility(Z)V

    .line 235
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initLauncherAccessControlData()V

    .line 157
    :goto_0
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->registerFindPhoneReceiver()V

    .line 158
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->registerAccessControlReceiver()V

    .line 159
    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 160
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->isAssociateFlymeAccountOpened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/app/AccessApplication;->isAssociateAccountOpened:Z

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/app/AccessApplication;->mErrorPwdCount:I

    .line 150
    return-void

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initAccessControlData()V

    goto :goto_0
.end method

.method private initEmergencyLayout()V
    .locals 2

    .prologue
    .line 862
    sget v1, Lcom/flyme/internal/R$id;->emergency_layout:I

    invoke-virtual {p0, v1}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mEmergencyLayout:Landroid/view/View;

    .line 863
    new-instance v0, Lcom/meizu/app/AccessApplication$9;

    invoke-direct {v0, p0}, Lcom/meizu/app/AccessApplication$9;-><init>(Lcom/meizu/app/AccessApplication;)V

    .line 876
    .local v0, "listener":Landroid/view/View$OnClickListener;
    sget v1, Lcom/flyme/internal/R$id;->emergency_layout_cancel:I

    invoke-virtual {p0, v1}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 877
    sget v1, Lcom/flyme/internal/R$id;->emergency_layout_forget_pwd:I

    invoke-virtual {p0, v1}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    sget v1, Lcom/flyme/internal/R$id;->emergency_layout_dialer:I

    invoke-virtual {p0, v1}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    return-void
.end method

.method private initLauncherAccessControlData()V
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    .line 211
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 212
    const-string/jumbo v0, "access_control"

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmeizu/security/AccessControlManager;

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 213
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "accesspkg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessPkg:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "accesscls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessCls:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, "com.android.contacts"

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    .line 209
    :cond_0
    return-void
.end method

.method private initLockDigitPanel()V
    .locals 5

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 676
    .local v0, "layout":Landroid/view/LayoutInflater;
    sget v2, Lcom/flyme/internal/R$layout;->confirm_password_view:I

    const/4 v3, 0x0

    .line 675
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 677
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {p0, v1}, Lcom/meizu/app/AccessApplication;->setContentView(Landroid/view/View;)V

    .line 678
    sget v2, Lcom/flyme/internal/R$id;->keypadView:I

    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/SystemLockView;

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    .line 679
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 680
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v2, p0}, Lcom/meizu/widget/SystemLockView;->setPanelListener(Lcom/meizu/widget/SystemLockView$OnPanelListener;)V

    .line 681
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 682
    sget v4, Lcom/flyme/internal/R$string;->confirm_access_password_tip:I

    .line 681
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 222
    sget v0, Lcom/flyme/internal/R$style;->Theme_Flyme_Light_AccessControl:I

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->setTheme(I)V

    .line 223
    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initLockDigitPanel()V

    .line 231
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initEmergencyLayout()V

    .line 232
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initCancelText()V

    .line 221
    return-void
.end method

.method private isAssociateFlymeAccountOpened()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->isFlymeAccountLogined()Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    return v1

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 352
    const-string/jumbo v3, "mz_applock_pwd_associate_account"

    .line 351
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isDialer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 855
    const-string/jumbo v0, "com.android.dialer"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    const/4 v0, 0x1

    return v0

    .line 858
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private registerAccessControlReceiver()V
    .locals 2

    .prologue
    .line 505
    new-instance v1, Lcom/meizu/app/AccessApplication$7;

    invoke-direct {v1, p0}, Lcom/meizu/app/AccessApplication$7;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 513
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 514
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    const-string/jumbo v1, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/app/AccessApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    return-void
.end method

.method private registerFindPhoneReceiver()V
    .locals 2

    .prologue
    .line 165
    new-instance v1, Lcom/meizu/app/AccessApplication$3;

    invoke-direct {v1, p0}, Lcom/meizu/app/AccessApplication$3;-><init>(Lcom/meizu/app/AccessApplication;)V

    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mFindPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mFindPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/app/AccessApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    return-void
.end method

.method private releaseFlymeAccountServiceConnection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->unbindService(Landroid/content/ServiceConnection;)V

    .line 333
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mFlymeAccountServiceConnection:Landroid/content/ServiceConnection;

    .line 330
    :cond_0
    return-void
.end method

.method private resetDigitPanelView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 687
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v7}, Lcom/meizu/widget/SystemLockView;->setFitsSystemWindows(Z)V

    .line 688
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 689
    const-string/jumbo v4, "mz_password_type_app_lock"

    .line 688
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/meizu/app/AccessApplication;->mPasswordType:I

    .line 690
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    iget v4, p0, Lcom/meizu/app/AccessApplication;->mPasswordType:I

    invoke-virtual {v3, v4}, Lcom/meizu/widget/SystemLockView;->setKeyPadType(I)V

    .line 691
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 692
    const-string/jumbo v4, "mz_password_length_applock"

    const/4 v5, 0x4

    .line 691
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 693
    .local v0, "max":I
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v0}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 694
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/SystemLockView;->setWidgetLayoutVisibility(Z)V

    .line 696
    iget v3, p0, Lcom/meizu/app/AccessApplication;->mPasswordType:I

    if-ne v3, v7, :cond_0

    .line 697
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v0}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 698
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/SystemLockView;->setHollowVisible(Z)V

    .line 699
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {v3, v6}, Lcom/meizu/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    .line 700
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 701
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v1, v3, 0x4

    .line 702
    .local v1, "mode":I
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 685
    .end local v1    # "mode":I
    .end local v2    # "win":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private setForgetButtonVisibility(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 882
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/app/AccessApplication;->isDialer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mCancelView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mForgetPasswordLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mEmergencyLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 886
    if-eqz p1, :cond_0

    .line 887
    sget v0, Lcom/flyme/internal/R$id;->emergency_divider_left:I

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 888
    sget v0, Lcom/flyme/internal/R$id;->emergency_layout_forget_pwd:I

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 881
    :goto_0
    return-void

    .line 890
    :cond_0
    sget v0, Lcom/flyme/internal/R$id;->emergency_divider_left:I

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 891
    sget v0, Lcom/flyme/internal/R$id;->emergency_layout_forget_pwd:I

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 894
    :cond_1
    if-eqz p1, :cond_2

    .line 895
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mCancelView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mForgetPasswordLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 898
    :cond_2
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mCancelView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mForgetPasswordLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startEmergencyDialer()V
    .locals 2

    .prologue
    .line 906
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 909
    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->startActivity(Landroid/content/Intent;)V

    .line 905
    return-void
.end method

.method private startIdentiedComp()V
    .locals 6

    .prologue
    .line 773
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v4, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    invoke-virtual {v3, v4, v5}, Lmeizu/security/AccessControlManager;->addAccessControlPassMz(Ljava/lang/String;Z)V

    .line 774
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    .line 775
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 776
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v3}, Landroid/content/IntentExt;->getAccessSrcFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 777
    const/4 v1, 0x0

    .line 778
    .local v1, "fromActivityStack":Z
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iget-object v3, v3, Landroid/content/ActivityInfoExt;->mAccessPkg:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 779
    const/4 v1, 0x1

    .line 781
    :cond_0
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 783
    const-string/jumbo v3, "AccessApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fromActivityStack : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->isTaskRoot()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 788
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 792
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x800001

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 793
    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 795
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->startActivity(Landroid/content/Intent;)V

    .line 796
    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {p0, v3, v4}, Lcom/meizu/app/AccessApplication;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    .end local v1    # "fromActivityStack":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 772
    return-void

    .line 797
    .restart local v1    # "fromActivityStack":Z
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AccessApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startLauncherIdentiedComp()V
    .locals 5

    .prologue
    .line 805
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/meizu/app/AccessApplication;->mFromNotification:Z

    invoke-virtual {v2, v3, v4}, Lmeizu/security/AccessControlManager;->addAccessControlPassMz(Ljava/lang/String;Z)V

    .line 806
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mAccessPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mAccessCls:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .local v1, "newComponentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 808
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v3, v3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v3}, Landroid/content/IntentExt;->getAccessSrcFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 811
    :try_start_0
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/meizu/app/AccessApplication;->startActivity(Landroid/content/Intent;)V

    .line 812
    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/meizu/app/AccessApplication;->overridePendingTransition(II)V

    .line 813
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_0
    return-void

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AccessApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot start launcher identied component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startListeningForFingerprint()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 474
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 475
    .local v6, "userId":I
    invoke-virtual {p0, v6}, Lcom/meizu/app/AccessApplication;->isUnlockWithFingerPrintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->fingerprintUsedAsUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 479
    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 480
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/meizu/app/AccessApplication;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v3, 0x0

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 472
    :cond_1
    return-void
.end method

.method private startShakeAnim(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 821
    const-string/jumbo v1, "translationX"

    const/16 v2, 0x19

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 824
    const-wide/16 v2, 0x1a1

    .line 821
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 825
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 820
    return-void

    .line 821
    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x4039999a    # 2.9f
        0x41066666    # 8.4f
        0x416e6666    # 14.9f
        0x41a33333    # 20.4f
        0x41b5999a    # 22.7f
        0x41a00000    # 20.0f
        0x41566666    # 13.4f
        0x4099999a    # 4.8f
        -0x3f8ccccd    # -3.8f
        -0x3ed80000    # -10.5f
        -0x3eae6666    # -13.1f
        -0x3ec80000    # -11.5f
        -0x3f100000    # -7.5f
        -0x3fe00000    # -2.5f
        0x40333333    # 2.8f
        0x40d9999a    # 6.8f
        0x41066666    # 8.4f
        0x40fccccd    # 7.9f
        0x40d9999a    # 6.8f
        0x40a9999a    # 5.3f
        0x406ccccd    # 3.7f
        0x400ccccd    # 2.2f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startVerifyFlymeAccount(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 271
    const-string/jumbo v0, "intent_key"

    .line 272
    .local v0, "key":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 276
    .local v1, "validateIntent":Landroid/content/Intent;
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/meizu/app/AccessApplication;->startActivityForResult(Landroid/content/Intent;I)V

    .line 270
    return-void

    .line 273
    .end local v1    # "validateIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private stopListeningForFingerprint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 500
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 496
    :cond_0
    return-void
.end method

.method private unregisterAccessControl()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 539
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 541
    iput-object v1, p0, Lcom/meizu/app/AccessApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 538
    :cond_0
    return-void
.end method

.method private unregisterFindPhoneReceiver()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mFindPhoneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/app/AccessApplication;->mFindPhoneReceiver:Landroid/content/BroadcastReceiver;

    .line 534
    return-void
.end method

.method private verifyThePassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    new-instance v1, Lcom/meizu/app/AccessApplication$8;

    invoke-direct {v1, p0, p1}, Lcom/meizu/app/AccessApplication$8;-><init>(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->post(Ljava/lang/Runnable;)Z

    .line 544
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 592
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 593
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 596
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 597
    const-string/jumbo v2, "android.intent.category.HOME"

    .line 596
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 598
    .local v0, "localObject2":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 599
    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->startActivity(Landroid/content/Intent;)V

    .line 600
    const/4 v1, 0x1

    return v1

    .line 603
    .end local v0    # "localObject2":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public isFlymeAccountLogined()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 357
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 358
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.meizu.account"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 359
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 360
    const/4 v2, 0x1

    return v2

    .line 363
    :cond_0
    return v3
.end method

.method public isUnlockWithFingerPrintPossible(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 485
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 396
    const-string/jumbo v1, "AccessApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->releaseFlymeAccountServiceConnection()V

    .line 400
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 401
    iput-boolean v4, p0, Lcom/meizu/app/AccessApplication;->mVerifyIsOk:Z

    .line 402
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->clearAppLock()V

    .line 403
    iget-boolean v1, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    if-eqz v1, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->startLauncherIdentiedComp()V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->startIdentiedComp()V

    goto :goto_0

    .line 409
    :cond_2
    iget v1, p0, Lcom/meizu/app/AccessApplication;->mPasswordType:I

    if-ne v1, v4, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 412
    :cond_3
    const/16 v1, 0x3e7

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 413
    const-string/jumbo v1, "ErrorMsg"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v1, "AccessApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/meizu/app/AccessApplication;->removeSecondTopRecentTask(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmeizu/security/AccessControlManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 584
    return-void
.end method

.method public onCellAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 524
    return-void
.end method

.method public onCellCleared(Ljava/lang/String;)V
    .locals 0
    .param p1, "possword"    # Ljava/lang/String;

    .prologue
    .line 520
    return-void
.end method

.method public onCellFhish(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/meizu/app/AccessApplication;->verifyThePassword(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    .line 144
    iget-object v2, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v2, v2, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v2}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v0

    .line 145
    .local v0, "flag":I
    const/high16 v2, 0x40000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    .line 146
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initData()V

    .line 147
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initView()V

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 529
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 530
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->unregisterAccessControl()V

    .line 531
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->unregisterFindPhoneReceiver()V

    .line 532
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->releaseFlymeAccountServiceConnection()V

    .line 528
    return-void
.end method

.method public onInputTextButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 580
    return-void
.end method

.method public onKeyLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 662
    return-void
.end method

.method public onKeyRightButtonClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 668
    iget v0, p0, Lcom/meizu/app/AccessApplication;->mPasswordType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 669
    invoke-direct {p0, p1}, Lcom/meizu/app/AccessApplication;->verifyThePassword(Ljava/lang/String;)V

    .line 667
    :cond_0
    return-void
.end method

.method public onLeftButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->onBackPressed()V

    .line 571
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 436
    invoke-virtual {p0, p1}, Lcom/meizu/app/AccessApplication;->setIntent(Landroid/content/Intent;)V

    .line 437
    iput-object p1, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    .line 438
    iget-object v1, p0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v1, v1, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v0

    .line 439
    .local v0, "flag":I
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    .line 440
    iget-boolean v1, p0, Lcom/meizu/app/AccessApplication;->mIsFromFlymeLauncher:Z

    if-eqz v1, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initLauncherAccessControlData()V

    .line 445
    :goto_1
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->isAssociateFlymeAccountOpened()Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/app/AccessApplication;->isAssociateAccountOpened:Z

    .line 446
    iput v2, p0, Lcom/meizu/app/AccessApplication;->mErrorPwdCount:I

    .line 447
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initView()V

    .line 435
    return-void

    :cond_0
    move v1, v2

    .line 439
    goto :goto_0

    .line 443
    :cond_1
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->initAccessControlData()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 426
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mPause:Z

    .line 428
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    iget-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mVerifyIsOk:Z

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;

    invoke-virtual {p0}, Lcom/meizu/app/AccessApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 431
    sget v2, Lcom/flyme/internal/R$string;->confirm_access_password_tip:I

    .line 430
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 452
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/app/AccessApplication;->mPause:Z

    .line 454
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->checkAppAccesstrol()V

    .line 455
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->resetDigitPanelView()V

    .line 451
    return-void
.end method

.method public onRightButtonClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 576
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 461
    if-eqz p1, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->startListeningForFingerprint()V

    .line 460
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/meizu/app/AccessApplication;->stopListeningForFingerprint()V

    goto :goto_0
.end method

.method public removeSecondTopRecentTask(Ljava/lang/String;)V
    .locals 17
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 607
    const-string/jumbo v13, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/meizu/app/AccessApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 608
    .local v1, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/app/AccessApplication;->mIntent:Landroid/content/Intent;

    iget-object v13, v13, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v13}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v13

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_3

    const/4 v11, 0x1

    .line 610
    .local v11, "remove":Z
    :goto_0
    const/16 v13, 0xa

    .line 611
    const/4 v14, 0x1

    .line 609
    invoke-virtual {v1, v13, v14}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v10

    .line 612
    .local v10, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 613
    .local v7, "numTasks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_6

    .line 614
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 616
    .local v9, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v6, Landroid/content/Intent;

    iget-object v13, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 617
    .local v6, "intent":Landroid/content/Intent;
    iget-object v13, v9, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v13, :cond_0

    .line 618
    iget-object v13, v9, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 620
    :cond_0
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 621
    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x1

    if-ne v3, v13, :cond_2

    if-eqz v11, :cond_2

    .line 622
    :cond_1
    const-string/jumbo v13, "access"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "moveTaskBack :  packageName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 623
    const-string/jumbo v15, " recentInfo :"

    .line 622
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v12

    .line 626
    .local v12, "stackInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 613
    .end local v12    # "stackInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 608
    .end local v3    # "i":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "numTasks":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v10    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v11    # "remove":Z
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "remove":Z
    goto :goto_0

    .line 629
    .restart local v3    # "i":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "numTasks":I
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v10    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v12    # "stackInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :cond_4
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "info$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackInfo;

    .line 630
    .local v4, "info":Landroid/app/ActivityManager$StackInfo;
    iget v13, v4, Landroid/app/ActivityManager$StackInfo;->stackId:I

    if-eqz v13, :cond_5

    .line 631
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v13

    iget v14, v9, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget v15, v4, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/16 v16, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 635
    .end local v4    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v5    # "info$iterator":Ljava/util/Iterator;
    .end local v12    # "stackInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :catch_0
    move-exception v2

    .line 636
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 606
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_6
    return-void
.end method
