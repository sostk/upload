.class Lcom/meizu/widget/SystemLockView$1;
.super Ljava/lang/Object;
.source "SystemLockView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/SystemLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private editEnd:I

.field private temp:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/widget/SystemLockView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/SystemLockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/widget/SystemLockView;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 455
    iget-object v7, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v7}, Lcom/meizu/widget/SystemLockView;->-get2(Lcom/meizu/widget/SystemLockView;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v7

    iput v7, p0, Lcom/meizu/widget/SystemLockView$1;->editEnd:I

    .line 456
    iget-object v7, p0, Lcom/meizu/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 457
    .local v4, "len":I
    iget-object v7, p0, Lcom/meizu/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 460
    .local v6, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v7, v9}, Lcom/meizu/widget/SystemLockView;->-set1(Lcom/meizu/widget/SystemLockView;Z)Z

    .line 461
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 462
    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 463
    .local v0, "c":C
    const/16 v7, 0x20

    if-lt v0, v7, :cond_0

    const/16 v7, 0x7f

    if-le v0, v7, :cond_5

    .line 464
    :cond_0
    iget-object v7, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v7, v8}, Lcom/meizu/widget/SystemLockView;->-set1(Lcom/meizu/widget/SystemLockView;Z)Z

    .line 469
    .end local v0    # "c":C
    :cond_1
    iget-object v7, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v7, v9}, Lcom/meizu/widget/SystemLockView;->-set0(Lcom/meizu/widget/SystemLockView;Z)Z

    .line 470
    const/4 v3, 0x0

    :goto_1
    iget-object v7, p0, Lcom/meizu/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 471
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 472
    .local v1, "c":I
    const/16 v7, 0x41

    if-lt v1, v7, :cond_6

    const/16 v7, 0x5a

    if-gt v1, v7, :cond_6

    .line 473
    :cond_2
    iget-object v7, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v7, v8}, Lcom/meizu/widget/SystemLockView;->-set0(Lcom/meizu/widget/SystemLockView;Z)Z

    .line 477
    .end local v1    # "c":I
    :cond_3
    iget-object v7, p0, Lcom/meizu/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget-object v8, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v8}, Lcom/meizu/widget/SystemLockView;->-get5(Lcom/meizu/widget/SystemLockView;)I

    move-result v8

    if-le v7, v8, :cond_4

    .line 479
    :try_start_0
    iget v7, p0, Lcom/meizu/widget/SystemLockView$1;->editEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/meizu/widget/SystemLockView$1;->editEnd:I

    invoke-interface {p1, v7, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_4
    iget-object v7, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/widget/SystemLockView;->-wrap2(Lcom/meizu/widget/SystemLockView;Ljava/lang/String;)V

    .line 453
    return-void

    .line 461
    .restart local v0    # "c":C
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "c":C
    .restart local v1    # "c":I
    :cond_6
    const/16 v7, 0x61

    if-lt v1, v7, :cond_7

    const/16 v7, 0x7a

    if-le v1, v7, :cond_2

    .line 470
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 480
    .end local v1    # "c":I
    :catch_0
    move-exception v2

    .line 481
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-static {v7}, Lcom/meizu/widget/SystemLockView;->-get5(Lcom/meizu/widget/SystemLockView;)I

    move-result v7

    invoke-interface {p1, v9, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 482
    .local v5, "password":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/meizu/widget/SystemLockView$1;->this$0:Lcom/meizu/widget/SystemLockView;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/widget/SystemLockView;->-wrap2(Lcom/meizu/widget/SystemLockView;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/meizu/widget/SystemLockView;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "delete failed due to wrong SelectionEnd\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 449
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 444
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView$1;->temp:Ljava/lang/CharSequence;

    .line 443
    return-void
.end method
