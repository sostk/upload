.class Lcom/meizu/widget/ShutdownLockView$1;
.super Ljava/lang/Object;
.source "ShutdownLockView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/ShutdownLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private editEnd:I

.field private temp:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/widget/ShutdownLockView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/ShutdownLockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/widget/ShutdownLockView;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/meizu/widget/ShutdownLockView$1;->this$0:Lcom/meizu/widget/ShutdownLockView;

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

    .line 439
    iget-object v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->this$0:Lcom/meizu/widget/ShutdownLockView;

    invoke-static {v7}, Lcom/meizu/widget/ShutdownLockView;->-get2(Lcom/meizu/widget/ShutdownLockView;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v7

    iput v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->editEnd:I

    .line 440
    iget-object v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 441
    .local v4, "len":I
    iget-object v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->this$0:Lcom/meizu/widget/ShutdownLockView;

    invoke-static {v7, v9}, Lcom/meizu/widget/ShutdownLockView;->-set1(Lcom/meizu/widget/ShutdownLockView;Z)Z

    .line 445
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 446
    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 447
    .local v0, "c":C
    const/16 v7, 0x20

    if-lt v0, v7, :cond_0

    const/16 v7, 0x7f

    if-le v0, v7, :cond_5

    .line 448
    :cond_0
    iget-object v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->this$0:Lcom/meizu/widget/ShutdownLockView;

    invoke-static {v7, v8}, Lcom/meizu/widget/ShutdownLockView;->-set1(Lcom/meizu/widget/ShutdownLockView;Z)Z

    .line 453
    .end local v0    # "c":C
    :cond_1
    iget-object v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->this$0:Lcom/meizu/widget/ShutdownLockView;

    invoke-static {v7, v9}, Lcom/meizu/widget/ShutdownLockView;->-set0(Lcom/meizu/widget/ShutdownLockView;Z)Z

    .line 454
    const/4 v3, 0x0

    :goto_1
    iget-object v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 455
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 456
    .local v1, "c":I
    const/16 v7, 0x41

    if-lt v1, v7, :cond_6

    const/16 v7, 0x5a

    if-gt v1, v7, :cond_6

    .line 457
    :cond_2
    iget-object v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->this$0:Lcom/meizu/widget/ShutdownLockView;

    invoke-static {v7, v8}, Lcom/meizu/widget/ShutdownLockView;->-set0(Lcom/meizu/widget/ShutdownLockView;Z)Z

    .line 461
    .end local v1    # "c":I
    :cond_3
    iget-object v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->temp:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget-object v8, p0, Lcom/meizu/widget/ShutdownLockView$1;->this$0:Lcom/meizu/widget/ShutdownLockView;

    invoke-static {v8}, Lcom/meizu/widget/ShutdownLockView;->-get5(Lcom/meizu/widget/ShutdownLockView;)I

    move-result v8

    if-le v7, v8, :cond_4

    .line 463
    :try_start_0
    iget v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->editEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/meizu/widget/ShutdownLockView$1;->editEnd:I

    invoke-interface {p1, v7, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_4
    iget-object v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->this$0:Lcom/meizu/widget/ShutdownLockView;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/widget/ShutdownLockView;->-wrap2(Lcom/meizu/widget/ShutdownLockView;Ljava/lang/String;)V

    .line 437
    return-void

    .line 445
    .restart local v0    # "c":C
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "c":C
    .restart local v1    # "c":I
    :cond_6
    const/16 v7, 0x61

    if-lt v1, v7, :cond_7

    const/16 v7, 0x7a

    if-le v1, v7, :cond_2

    .line 454
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 464
    .end local v1    # "c":I
    :catch_0
    move-exception v2

    .line 465
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->this$0:Lcom/meizu/widget/ShutdownLockView;

    invoke-static {v7}, Lcom/meizu/widget/ShutdownLockView;->-get5(Lcom/meizu/widget/ShutdownLockView;)I

    move-result v7

    invoke-interface {p1, v9, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 466
    .local v5, "password":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/meizu/widget/ShutdownLockView$1;->this$0:Lcom/meizu/widget/ShutdownLockView;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/widget/ShutdownLockView;->-wrap2(Lcom/meizu/widget/ShutdownLockView;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/meizu/widget/ShutdownLockView;->-get0()Ljava/lang/String;

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

    .line 468
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 433
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 428
    iput-object p1, p0, Lcom/meizu/widget/ShutdownLockView$1;->temp:Ljava/lang/CharSequence;

    .line 427
    return-void
.end method
