.class public Lcom/meizu/server/AppOpsHandle;
.super Ljava/lang/Object;
.source "AppOpsHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/server/AppOpsHandle$DialogItem;,
        Lcom/meizu/server/AppOpsHandle$1;
    }
.end annotation


# static fields
.field public static final APPOPS_NOT_DEFINE:I = -0x1

.field public static final APPOPS_PREX:Ljava/lang/String; = "_op_"

.field public static final APPOPS_SETTINGS_ALLOWED:I = 0x1

.field public static final APPOPS_SETTINGS_ALLOWED_ALWAYLS:I = 0x4

.field public static final APPOPS_SETTINGS_DENIED:I = 0x0

.field public static final APPOPS_SETTINGS_DENIED_ALWAYLS:I = 0x3

.field public static final APPOPS_SETTINGS_INIT:I = 0x2

.field public static DEBUG:Z = false

.field private static final DISMISS:I = 0x2

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field private static final SHOW:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FlymePermissionManager"

.field private static final UPDATE_DEFUAT:I = 0x0

.field private static final ctsKey:Ljava/lang/String; = "persist.sys.flyme.perm"

.field private static final ctsRunningValue:Ljava/lang/String; = "disable"

.field private static mCtsRuning:Z


# instance fields
.field dialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/server/AppOpsHandle$DialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageLabel:Ljava/lang/String;

.field private mPermissonDetailsString:Ljava/lang/String;

.field private mPhHandler:Landroid/os/Handler;

.field private mShortcutLock:Ljava/lang/Object;

.field private mShortcutWait:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/meizu/server/AppOpsHandle;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/meizu/server/AppOpsHandle;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/server/AppOpsHandle;->showToastMessage(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/meizu/server/AppOpsHandle;Lcom/meizu/server/AppOpsHandle$DialogItem;)V
    .locals 0
    .param p1, "item"    # Lcom/meizu/server/AppOpsHandle$DialogItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/server/AppOpsHandle;->updateDialogList(Lcom/meizu/server/AppOpsHandle$DialogItem;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/meizu/server/AppOpsHandle;Landroid/content/DialogInterface;ZZZ)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "postive"    # Z
    .param p3, "dimiss"    # Z
    .param p4, "always"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/server/AppOpsHandle;->update(Landroid/content/DialogInterface;ZZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "persist.sys.flyme.perm"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "disable"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/meizu/server/AppOpsHandle;->mCtsRuning:Z

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mPackageLabel:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mShortcutLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mShortcutWait:Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/meizu/server/AppOpsHandle$1;

    invoke-direct {v0, p0}, Lcom/meizu/server/AppOpsHandle$1;-><init>(Lcom/meizu/server/AppOpsHandle;)V

    iput-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    .line 331
    iput-object p1, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    .line 330
    return-void
.end method

.method private checkDialogList(IILjava/lang/String;)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 126
    sget-boolean v2, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FlymePermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkDialogList code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/meizu/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aDialgItem$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/AppOpsHandle$DialogItem;

    .line 128
    .local v0, "aDialgItem":Lcom/meizu/server/AppOpsHandle$DialogItem;
    iget v2, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    if-ne p1, v2, :cond_1

    iget v2, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->uid:I

    if-ne p2, v2, :cond_1

    .line 129
    iget-object v2, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 128
    if-eqz v2, :cond_1

    .line 130
    iget-object v2, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    sget-boolean v2, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "FlymePermissionManager"

    const-string/jumbo v3, "checkDialogList:true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 137
    .end local v0    # "aDialgItem":Lcom/meizu/server/AppOpsHandle$DialogItem;
    :cond_3
    sget-boolean v2, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "FlymePermissionManager"

    const-string/jumbo v3, "checkDialogList:false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private getPackageNameFromUid(I)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 576
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "pkgs":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 578
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 580
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getPermissionTypeDetails(I)Ljava/lang/String;
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 569
    iget-object v1, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    .line 568
    invoke-static {v1, p1}, Lmeizu/security/FlymePermissionManager;->getPermissonTypeDetails(Landroid/content/Context;I)Lmeizu/security/FlymePermissionManager$TitleAndContent;

    move-result-object v0

    .line 570
    .local v0, "titleAndContent":Lmeizu/security/FlymePermissionManager$TitleAndContent;
    iget-object v1, v0, Lmeizu/security/FlymePermissionManager$TitleAndContent;->content:Ljava/lang/String;

    return-object v1
.end method

.method private isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 306
    const/4 v6, 0x1

    .line 308
    .local v6, "value":Z
    :try_start_0
    const-string/jumbo v7, "activity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 309
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 311
    .local v6, "value":Z
    if-nez v6, :cond_1

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "default_input_method"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "curIMEId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 314
    const-string/jumbo v7, "input_method"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 315
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 316
    .local v4, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 317
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 327
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "curIMEId":Ljava/lang/String;
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "info":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "info$iterator":Ljava/util/Iterator;
    .end local v6    # "value":Z
    :cond_1
    :goto_0
    return v6

    .line 317
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "curIMEId":Ljava/lang/String;
    .restart local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v4    # "info":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v5    # "info$iterator":Ljava/util/Iterator;
    .restart local v6    # "value":Z
    :cond_2
    const/4 v6, 0x0

    .local v6, "value":Z
    goto :goto_0

    .line 323
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "curIMEId":Ljava/lang/String;
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "info":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "info$iterator":Ljava/util/Iterator;
    .end local v6    # "value":Z
    :catch_0
    move-exception v2

    .line 324
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "FlymePermissionManager"

    const-string/jumbo v8, "Exception"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isShareUidAndIncludeSystemFlag(I)Z
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 357
    iget-object v5, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 358
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "pkgs":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v5, v2

    if-le v5, v7, :cond_1

    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v4, v2

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 361
    aget-object v1, v2, v0

    .line 362
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Lmeizu/security/FlymePermissionManager;->isSystemApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 363
    return v7

    .line 360
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "i":I
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v4    # "size":I
    :cond_1
    return v6

    .line 369
    .restart local v0    # "i":I
    .restart local v4    # "size":I
    :cond_2
    return v6
.end method

.method private isShortCutExist(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 534
    const-string/jumbo v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 537
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 538
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "installTitle":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    return v6

    .line 543
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 544
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 543
    if-eqz v4, :cond_2

    .line 545
    :cond_1
    return v6

    .line 547
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "installTitle":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 551
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return v7
.end method

.method private showSettingDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # I
    .param p3, "checkIntent"    # Landroid/content/Intent;

    .prologue
    .line 227
    const-string/jumbo v3, "pkg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "pkg":Ljava/lang/String;
    const-string/jumbo v3, "INTENT_SHORTCUT"

    .line 229
    const/4 v4, 0x0

    .line 228
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 230
    .local v12, "shortCut":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/meizu/server/AppOpsHandle;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Landroid/os/BuildExt;->IS_CTA:Z

    if-eqz v3, :cond_2

    .line 231
    :cond_0
    const/4 v11, 0x1

    .line 239
    .local v11, "remember":Z
    new-instance v8, Landroid/app/AlertDialog$Builder;

    .line 241
    const/4 v3, 0x5

    .line 239
    move-object/from16 v0, p1

    invoke-direct {v8, v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 242
    .local v8, "b":Landroid/app/AlertDialog$Builder;
    sget v3, Lcom/flyme/internal/R$string;->allow_check_app:I

    .line 243
    new-instance v4, Lcom/meizu/server/AppOpsHandle$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/meizu/server/AppOpsHandle$2;-><init>(Lcom/meizu/server/AppOpsHandle;)V

    .line 242
    invoke-virtual {v8, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    sget v3, Lcom/flyme/internal/R$string;->not_allow_check_app:I

    .line 253
    new-instance v4, Lcom/meizu/server/AppOpsHandle$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/meizu/server/AppOpsHandle$3;-><init>(Lcom/meizu/server/AppOpsHandle;)V

    .line 252
    invoke-virtual {v8, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    if-nez v12, :cond_1

    .line 263
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/server/AppOpsHandle;->getPermissionTypeDetails(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 265
    sget v4, Lcom/flyme/internal/R$string;->dlg_check_app_message_on:I

    .line 264
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/server/AppOpsHandle;->mPackageLabel:Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 264
    invoke-virtual {v3, v4, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    .line 270
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 272
    .local v5, "d":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7e0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 273
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 275
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 276
    const/4 v3, -0x1

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    .line 277
    .local v9, "button":Landroid/widget/Button;
    new-instance v3, Lcom/meizu/server/AppOpsHandle$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/meizu/server/AppOpsHandle$4;-><init>(Lcom/meizu/server/AppOpsHandle;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 290
    const-string/jumbo v3, "uid"

    const/4 v4, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 291
    .local v6, "uid":I
    new-instance v2, Lcom/meizu/server/AppOpsHandle$DialogItem;

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/meizu/server/AppOpsHandle$DialogItem;-><init>(Lcom/meizu/server/AppOpsHandle;ILandroid/app/AlertDialog;ILjava/lang/String;)V

    .line 292
    .local v2, "item":Lcom/meizu/server/AppOpsHandle$DialogItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 294
    .local v10, "message":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v10, Landroid/os/Message;->what:I

    .line 295
    iput-object v2, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x4fb0

    invoke-virtual {v3, v10, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 226
    .end local v2    # "item":Lcom/meizu/server/AppOpsHandle$DialogItem;
    .end local v5    # "d":Landroid/app/AlertDialog;
    .end local v6    # "uid":I
    .end local v8    # "b":Landroid/app/AlertDialog$Builder;
    .end local v9    # "button":Landroid/widget/Button;
    .end local v10    # "message":Landroid/os/Message;
    .end local v11    # "remember":Z
    :goto_1
    return-void

    .line 267
    .restart local v8    # "b":Landroid/app/AlertDialog$Builder;
    .restart local v11    # "remember":Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 268
    sget v4, Lcom/flyme/internal/R$string;->dlg_check_app_shortcut:I

    .line 267
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/server/AppOpsHandle;->mPackageLabel:Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 267
    invoke-virtual {v3, v4, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/meizu/server/AppOpsHandle;->mPermissonDetailsString:Ljava/lang/String;

    goto :goto_0

    .line 298
    .end local v8    # "b":Landroid/app/AlertDialog$Builder;
    .end local v11    # "remember":Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v13, "_op_"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    const/4 v13, 0x0

    .line 298
    invoke-static {v3, v4, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private showToastMessage(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 142
    const-string/jumbo v5, "code"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "code":I
    const-string/jumbo v5, "uid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 144
    .local v4, "uid":I
    const-string/jumbo v5, "pkg"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "pkg":Ljava/lang/String;
    invoke-direct {p0, v0, v4, v3}, Lcom/meizu/server/AppOpsHandle;->checkDialogList(IILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    const/4 v2, 0x0

    .line 151
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v5, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 152
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/server/AppOpsHandle;->mPackageLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    iget-object v5, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0, p1}, Lcom/meizu/server/AppOpsHandle;->showSettingDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 141
    return-void

    .line 154
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private update(Landroid/content/DialogInterface;ZZZ)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "postive"    # Z
    .param p3, "dimiss"    # Z
    .param p4, "always"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "item":Lcom/meizu/server/AppOpsHandle$DialogItem;
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aDialgItem$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/AppOpsHandle$DialogItem;

    .line 167
    .local v0, "aDialgItem":Lcom/meizu/server/AppOpsHandle$DialogItem;
    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 168
    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eq v4, p1, :cond_1

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 167
    if-eqz v4, :cond_0

    .line 170
    :cond_1
    move-object v2, v0

    .line 175
    .end local v0    # "aDialgItem":Lcom/meizu/server/AppOpsHandle$DialogItem;
    .end local v2    # "item":Lcom/meizu/server/AppOpsHandle$DialogItem;
    :cond_2
    if-eqz v2, :cond_7

    .line 176
    iget v4, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    const/16 v5, 0x44

    if-eq v4, v5, :cond_3

    .line 177
    iget v4, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    const/16 v5, 0x4d

    if-ne v4, v5, :cond_6

    .line 178
    :cond_3
    if-eqz p2, :cond_4

    iget-object v4, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-static {v4}, Lmeizu/security/FlymePermissionManager;->isSystemSignatures(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    sget-boolean v4, Landroid/os/BuildExt;->IS_CTA:Z

    if-eqz v4, :cond_6

    .line 179
    :cond_5
    const/4 p4, 0x0

    .line 183
    .end local p4    # "always":Z
    :cond_6
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 184
    if-eqz p2, :cond_9

    .line 185
    if-eqz p4, :cond_8

    .line 186
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    const/4 v6, 0x4

    .line 186
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    :goto_0
    invoke-direct {p0, v2, v7}, Lcom/meizu/server/AppOpsHandle;->updatePermissionControl(Lcom/meizu/server/AppOpsHandle$DialogItem;Z)V

    .line 164
    :cond_7
    :goto_1
    return-void

    .line 190
    :cond_8
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 196
    :cond_9
    if-eqz p3, :cond_a

    .line 198
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 199
    const-string/jumbo v6, "_op_"

    .line 198
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 199
    iget v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    .line 198
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 200
    .local v3, "res":I
    if-ne v3, v8, :cond_7

    .line 201
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 206
    .end local v3    # "res":I
    :cond_a
    invoke-direct {p0, v2, v9}, Lcom/meizu/server/AppOpsHandle;->updatePermissionControl(Lcom/meizu/server/AppOpsHandle$DialogItem;Z)V

    .line 207
    if-eqz p4, :cond_b

    .line 208
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 210
    const/4 v6, 0x3

    .line 208
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 212
    :cond_b
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_op_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method private updateDialogList(Lcom/meizu/server/AppOpsHandle$DialogItem;)V
    .locals 8
    .param p1, "item"    # Lcom/meizu/server/AppOpsHandle$DialogItem;

    .prologue
    const/4 v6, 0x0

    .line 106
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aDialgItem$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/AppOpsHandle$DialogItem;

    .line 107
    .local v0, "aDialgItem":Lcom/meizu/server/AppOpsHandle$DialogItem;
    iget v4, p1, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    iget v5, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    if-ne v4, v5, :cond_0

    iget v4, p1, Lcom/meizu/server/AppOpsHandle$DialogItem;->uid:I

    iget v5, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->uid:I

    if-ne v4, v5, :cond_0

    .line 108
    iget-object v4, p1, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    iget-object v5, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 109
    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle$DialogItem;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/meizu/server/AppOpsHandle$DialogItem;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_op_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/meizu/server/AppOpsHandle$DialogItem;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "mPackageNameStringOp":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 115
    .local v3, "message":Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->what:I

    .line 116
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 119
    .end local v2    # "mPackageNameStringOp":Ljava/lang/String;
    .end local v3    # "message":Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/meizu/server/AppOpsHandle;->dialogList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void

    .line 105
    .end local v0    # "aDialgItem":Lcom/meizu/server/AppOpsHandle$DialogItem;
    :cond_2
    return-void
.end method

.method private updatePermissionControl(Lcom/meizu/server/AppOpsHandle$DialogItem;Z)V
    .locals 0
    .param p1, "item"    # Lcom/meizu/server/AppOpsHandle$DialogItem;
    .param p2, "limit"    # Z

    .prologue
    .line 222
    return-void
.end method


# virtual methods
.method public handleIntentOperation(IILjava/lang/String;Lcom/meizu/server/FlymePermissionService;Landroid/content/Intent;)I
    .locals 21
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "service"    # Lcom/meizu/server/FlymePermissionService;
    .param p5, "sendIntent"    # Landroid/content/Intent;

    .prologue
    .line 374
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->mCtsRuning:Z

    if-eqz v4, :cond_1

    .line 375
    const-string/jumbo v4, "FlymePermissionManager"

    const-string/jumbo v5, "cts tester is running"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/16 v4, 0x17

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 377
    const/4 v4, 0x1

    return v4

    .line 379
    :cond_0
    const/4 v4, 0x0

    return v4

    .line 382
    :cond_1
    const-string/jumbo v4, "INTENT_SHORTCUT"

    const/4 v5, 0x0

    .line 381
    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 383
    .local v17, "shortCut":Z
    invoke-static/range {p3 .. p3}, Lmeizu/security/FlymePermissionManager;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 384
    const/4 v4, 0x0

    return v4

    .line 387
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/meizu/server/AppOpsHandle;->isShareUidAndIncludeSystemFlag(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 388
    const/4 v4, 0x0

    return v4

    .line 391
    :cond_3
    if-nez v17, :cond_14

    .line 392
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 393
    .local v13, "localLock":Ljava/lang/Object;
    monitor-enter v13

    .line 395
    const/4 v12, 0x0

    .line 396
    .local v12, "i":I
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_op_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 397
    .local v15, "opName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 398
    const/4 v5, -0x1

    .line 397
    invoke-static {v4, v15, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 399
    .local v16, "res":I
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "first get res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_4
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_9

    .line 401
    const/16 v4, 0x17

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 402
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x17

    if-lt v4, v5, :cond_5

    .line 403
    const/4 v4, 0x1

    monitor-exit v13

    return v4

    .line 404
    :cond_5
    const/16 v4, 0x17

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v5, 0x17

    if-ge v4, v5, :cond_7

    .line 409
    :cond_6
    const/4 v4, 0x0

    monitor-exit v13

    return v4

    .line 406
    :cond_7
    const/16 v4, 0x49

    move/from16 v0, p1

    if-eq v0, v4, :cond_6

    .line 408
    const/16 v4, 0x38

    move/from16 v0, p1

    if-eq v0, v4, :cond_6

    .line 414
    const/16 v18, 0x2

    .line 415
    .local v18, "value":I
    :try_start_2
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get recommend value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_8
    const/16 v16, 0x2

    .line 426
    .end local v18    # "value":I
    :cond_9
    const/4 v4, 0x2

    move/from16 v0, v16

    if-eq v0, v4, :cond_a

    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_b

    .line 428
    :cond_a
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    .line 427
    invoke-virtual/range {v4 .. v10}, Lcom/meizu/server/AppOpsHandle;->queueOperationMessage(IILjava/lang/String;IZLandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    :cond_b
    :goto_0
    const/4 v4, 0x2

    move/from16 v0, v16

    if-eq v0, v4, :cond_c

    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_f

    :cond_c
    const/16 v4, 0x5f

    if-ge v12, v4, :cond_f

    .line 433
    const-wide/16 v4, 0xc8

    :try_start_3
    invoke-virtual {v13, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 434
    add-int/lit8 v12, v12, 0x1

    .line 435
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 440
    :cond_d
    :goto_1
    :try_start_4
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "break res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 442
    const/4 v5, 0x2

    .line 441
    invoke-static {v4, v15, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 443
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "break get res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 393
    .end local v15    # "opName":Ljava/lang/String;
    .end local v16    # "res":I
    :catchall_0
    move-exception v4

    monitor-exit v13

    throw v4

    .line 446
    .restart local v15    # "opName":Ljava/lang/String;
    .restart local v16    # "res":I
    :cond_f
    const/4 v4, 0x4

    move/from16 v0, v16

    if-eq v0, v4, :cond_12

    .line 447
    const/4 v4, 0x3

    move/from16 v0, v16

    if-eq v0, v4, :cond_12

    .line 448
    :goto_2
    :try_start_5
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 449
    .local v14, "message":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v14, Landroid/os/Message;->what:I

    .line 450
    iput-object v15, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v14, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 454
    .end local v14    # "message":Landroid/os/Message;
    :cond_10
    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_11

    .line 455
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ne v0, v4, :cond_13

    .line 456
    :cond_11
    const/4 v4, 0x0

    monitor-exit v13

    return v4

    .line 447
    :cond_12
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_10

    goto :goto_2

    .line 458
    :cond_13
    const/4 v4, 0x1

    monitor-exit v13

    return v4

    .line 462
    .end local v12    # "i":I
    .end local v13    # "localLock":Ljava/lang/Object;
    .end local v15    # "opName":Ljava/lang/String;
    .end local v16    # "res":I
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/meizu/server/AppOpsHandle;->isShortCutExist(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 463
    const/4 v4, 0x1

    return v4

    .line 465
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/AppOpsHandle;->mShortcutLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 466
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/AppOpsHandle;->mShortcutWait:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 468
    const/4 v12, 0x0

    .line 469
    .restart local v12    # "i":I
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_op_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 470
    .restart local v15    # "opName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 471
    const/4 v5, -0x1

    .line 470
    invoke-static {v4, v15, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 472
    .restart local v16    # "res":I
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_16

    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "first get res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_16
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_18

    .line 476
    const/16 v18, 0x2

    .line 477
    .restart local v18    # "value":I
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_17

    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get recommend value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_17
    const/16 v16, 0x2

    .line 488
    .end local v18    # "value":I
    :cond_18
    const/4 v4, 0x2

    move/from16 v0, v16

    if-eq v0, v4, :cond_19

    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_1a

    .line 490
    :cond_19
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    .line 489
    invoke-virtual/range {v4 .. v10}, Lcom/meizu/server/AppOpsHandle;->queueOperationMessage(IILjava/lang/String;IZLandroid/content/Intent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 493
    :cond_1a
    :goto_3
    const/4 v4, 0x2

    move/from16 v0, v16

    if-eq v0, v4, :cond_1b

    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_1e

    :cond_1b
    const/16 v4, 0x5f

    if-ge v12, v4, :cond_1e

    .line 495
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mShortcutWait:Ljava/lang/Object;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 496
    add-int/lit8 v12, v12, 0x1

    .line 497
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_1c

    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 502
    :cond_1c
    :goto_4
    :try_start_9
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_1d

    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "break res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 504
    const/4 v5, 0x2

    .line 503
    invoke-static {v4, v15, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 505
    sget-boolean v4, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v4, :cond_1a

    const-string/jumbo v4, "FlymePermissionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "break get res: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 466
    .end local v15    # "opName":Ljava/lang/String;
    .end local v16    # "res":I
    :catchall_1
    move-exception v4

    :try_start_a
    monitor-exit v20

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 465
    .end local v12    # "i":I
    :catchall_2
    move-exception v4

    monitor-exit v19

    throw v4

    .line 508
    .restart local v12    # "i":I
    .restart local v15    # "opName":Ljava/lang/String;
    .restart local v16    # "res":I
    :cond_1e
    const/4 v4, 0x4

    move/from16 v0, v16

    if-eq v0, v4, :cond_21

    .line 509
    const/4 v4, 0x3

    move/from16 v0, v16

    if-eq v0, v4, :cond_21

    .line 510
    :goto_5
    :try_start_b
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 511
    .restart local v14    # "message":Landroid/os/Message;
    const/4 v4, 0x0

    iput v4, v14, Landroid/os/Message;->what:I

    .line 512
    iput-object v15, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    invoke-virtual {v4, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 515
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/server/AppOpsHandle;->mShortcutWait:Ljava/lang/Object;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 521
    .end local v14    # "message":Landroid/os/Message;
    :cond_1f
    :goto_6
    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_20

    .line 522
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ne v0, v4, :cond_22

    :cond_20
    :try_start_d
    monitor-exit v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 523
    const/4 v4, 0x0

    monitor-exit v19

    return v4

    .line 509
    :cond_21
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_1f

    goto :goto_5

    :cond_22
    :try_start_e
    monitor-exit v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 525
    const/4 v4, 0x1

    monitor-exit v19

    return v4

    .line 516
    .restart local v14    # "message":Landroid/os/Message;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    goto :goto_6

    .line 498
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "message":Landroid/os/Message;
    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    .line 436
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v13    # "localLock":Ljava/lang/Object;
    :catch_2
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    goto/16 :goto_1
.end method

.method public handleIntentPidOperation(IIILcom/meizu/server/FlymePermissionService;Landroid/content/Intent;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "service"    # Lcom/meizu/server/FlymePermissionService;
    .param p5, "sendIntent"    # Landroid/content/Intent;

    .prologue
    .line 345
    invoke-direct {p0, p2}, Lcom/meizu/server/AppOpsHandle;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "callingPkg":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v0, "system_server"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    const-string/jumbo v0, "android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 346
    if-eqz v0, :cond_2

    .line 348
    :cond_0
    sget-boolean v0, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 349
    const-string/jumbo v0, "FlymePermissionManager"

    const-string/jumbo v1, "android granted!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 352
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/server/AppOpsHandle;->handleIntentOperation(IILjava/lang/String;Lcom/meizu/server/FlymePermissionService;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public queueOperationMessage(IILjava/lang/String;IZLandroid/content/Intent;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "enable"    # Z
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    .line 557
    const-string/jumbo v0, "code"

    invoke-virtual {p6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    const-string/jumbo v0, "uid"

    invoke-virtual {p6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 559
    const-string/jumbo v0, "pkg"

    invoke-virtual {p6, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string/jumbo v0, "result"

    invoke-virtual {p6, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    const-string/jumbo v0, "enable"

    invoke-virtual {p6, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 562
    sget-boolean v0, Lcom/meizu/server/AppOpsHandle;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FlymePermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queueOperationMessage code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/meizu/server/AppOpsHandle;->mPhHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 556
    return-void
.end method

.method public setCtsRunning(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 335
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v1, v0, :cond_1

    .line 336
    sput-boolean p1, Lcom/meizu/server/AppOpsHandle;->mCtsRuning:Z

    .line 337
    const-string/jumbo v1, "persist.sys.flyme.perm"

    sget-boolean v0, Lcom/meizu/server/AppOpsHandle;->mCtsRuning:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "disable"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void

    .line 337
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 339
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "permission deny!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
