.class Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
.super Landroid/view/ActionMode;
.source "OptionPopupWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/OptionPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionActionMode"
.end annotation


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/meizu/widget/OptionPopupWindow;


# direct methods
.method static synthetic -get0(Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public constructor <init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/meizu/widget/OptionPopupWindow;
    .param p2, "cb"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 933
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-static {p1}, Lcom/meizu/widget/OptionPopupWindow;->-get2(Lcom/meizu/widget/OptionPopupWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 934
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 935
    iput-object p2, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 937
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->setType(I)V

    .line 932
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 978
    :try_start_0
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 980
    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 978
    return v0

    .line 979
    :catchall_0
    move-exception v0

    .line 980
    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 979
    throw v0
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 986
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    invoke-static {v0}, Lcom/meizu/widget/OptionPopupWindow;->-get1(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 988
    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow;->dismiss()V

    .line 992
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 993
    iput-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 994
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    invoke-static {v0, v1}, Lcom/meizu/widget/OptionPopupWindow;->-set0(Lcom/meizu/widget/OptionPopupWindow;Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    .line 985
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1014
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 1019
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    invoke-static {v1}, Lcom/meizu/widget/OptionPopupWindow;->-get2(Lcom/meizu/widget/OptionPopupWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1009
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1004
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 969
    :try_start_0
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 966
    return-void

    .line 970
    :catchall_0
    move-exception v0

    .line 971
    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 970
    throw v0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1026
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1029
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 961
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 956
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 951
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 946
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 941
    return-void
.end method
