.class public Lcom/meizu/widget/EditTextEx;
.super Landroid/widget/EditText;
.source "EditTextEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;,
        Lcom/meizu/widget/EditTextEx$StaticHint;
    }
.end annotation


# static fields
.field private static final COVER_TYPE_ALL:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "EditTextEx"


# instance fields
.field private mIsCursorAlwaysVisible:Z

.field private mIsInputMethodEnabled:Z

.field private mIsMagnifierVisible:Z

.field private mIsOptionsVisible:Z

.field private mOnPrivateIMECommandListener:Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;

.field private mPrivateImeOptionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 584
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 585
    const-string/jumbo v1, "com.meizu.input.cover.SMILE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 586
    const-string/jumbo v1, "com.meizu.input.cover.VOICE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 584
    sput-object v0, Lcom/meizu/widget/EditTextEx;->COVER_TYPE_ALL:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/EditTextEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    sget v0, Lcom/flyme/internal/R$attr;->editTextExStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/EditTextEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v6, Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-direct {v6}, Lcom/meizu/widget/EditTextEx$StaticHint;-><init>()V

    iput-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    .line 60
    iput-boolean v7, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    .line 62
    iput-boolean v7, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    .line 64
    iput-boolean v8, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    .line 66
    iput-boolean v7, p0, Lcom/meizu/widget/EditTextEx;->mIsInputMethodEnabled:Z

    .line 78
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getTextSize()F

    move-result v5

    .line 79
    .local v5, "textSize":F
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 80
    .local v4, "paddingRect":Landroid/graphics/Rect;
    sget-object v6, Lcom/flyme/internal/R$styleable;->EditTextEx:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 82
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_9

    .line 83
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 84
    .local v1, "attr":I
    sget v6, Lcom/flyme/internal/R$styleable;->EditTextEx_mzStaticHint:I

    if-ne v1, v6, :cond_1

    .line 85
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintText(Ljava/lang/CharSequence;)Z

    .line 82
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    sget v6, Lcom/flyme/internal/R$styleable;->EditTextEx_mzTextColorStaticHint:I

    if-ne v1, v6, :cond_2

    .line 87
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintColor(Landroid/content/res/ColorStateList;)Z

    goto :goto_1

    .line 88
    :cond_2
    sget v6, Lcom/flyme/internal/R$styleable;->EditTextEx_mzStaticHintWidth:I

    if-ne v1, v6, :cond_3

    .line 89
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintWidth(I)Z

    goto :goto_1

    .line 90
    :cond_3
    sget v6, Lcom/flyme/internal/R$styleable;->EditTextEx_mzTextSizeStaticHint:I

    if-ne v1, v6, :cond_4

    .line 91
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v5, v6

    goto :goto_1

    .line 92
    :cond_4
    sget v6, Lcom/flyme/internal/R$styleable;->EditTextEx_mzGravityStaticHint:I

    if-ne v1, v6, :cond_5

    .line 93
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    const/4 v7, -0x1

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintGravity(I)Z

    goto :goto_1

    .line 94
    :cond_5
    sget v6, Lcom/flyme/internal/R$styleable;->EditTextEx_mzPaddingLeftStaticHint:I

    if-ne v1, v6, :cond_6

    .line 95
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 96
    :cond_6
    sget v6, Lcom/flyme/internal/R$styleable;->EditTextEx_mzPaddingRightStaticHint:I

    if-ne v1, v6, :cond_7

    .line 97
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 98
    :cond_7
    sget v6, Lcom/flyme/internal/R$styleable;->EditTextEx_mzPaddingTopStaticHint:I

    if-ne v1, v6, :cond_8

    .line 99
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 100
    :cond_8
    sget v6, Lcom/flyme/internal/R$styleable;->EditTextEx_mzPaddingBottomStaticHint:I

    if-ne v1, v6, :cond_0

    .line 101
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 104
    .end local v1    # "attr":I
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v6, v4}, Lcom/meizu/widget/EditTextEx$StaticHint;->setPadding(Landroid/graphics/Rect;)V

    .line 106
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    float-to-int v7, v5

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintSize(I)Z

    .line 107
    invoke-direct {p0}, Lcom/meizu/widget/EditTextEx;->updateStaticHint()V

    .line 76
    return-void
.end method

.method public static notifyImeActionChanged(Landroid/widget/EditText;)V
    .locals 4
    .param p0, "edit"    # Landroid/widget/EditText;

    .prologue
    .line 323
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 324
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "initialSelStart"

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    const-string/jumbo v2, "initialSelEnd"

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    const-string/jumbo v2, "imeOptions"

    invoke-virtual {p0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    const-string/jumbo v2, "actionId"

    invoke-virtual {p0}, Landroid/widget/EditText;->getImeActionId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    const-string/jumbo v2, "actionLabel"

    invoke-virtual {p0}, Landroid/widget/EditText;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 331
    const-string/jumbo v2, "com.meizu.input.attrsChanged"

    invoke-virtual {v1, p0, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 322
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private updateStaticHint()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 275
    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-static {v1}, Lcom/meizu/widget/EditTextEx$StaticHint;->-wrap0(Lcom/meizu/widget/EditTextEx$StaticHint;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getStaticHint(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getStaticHintGravity()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintGravity()I

    move-result v0

    return v0
.end method

.method public getStaticHintPaddingBottom()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getStaticHintPaddingLeft()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getStaticHintPaddingRight()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getStaticHintPaddingTop()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final getStaticHintTextColor()I
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v1}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 153
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v1

    return v1

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    return v1
.end method

.method public final getStaticHintTextSize()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintSize()I

    move-result v0

    return v0
.end method

.method public final getStaticHintWidth()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-static {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->-wrap0(Lcom/meizu/widget/EditTextEx$StaticHint;)I

    move-result v0

    return v0
.end method

.method public isCursorAlwaysVisible(Z)Z
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    return v0
.end method

.method public final isInputMethodEnabled()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsInputMethodEnabled:Z

    return v0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    return v0
.end method

.method public isOptionsVisible()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    return v0
.end method

.method public notifyImeActionChanged()V
    .locals 0

    .prologue
    .line 315
    invoke-static {p0}, Lcom/meizu/widget/EditTextEx;->notifyImeActionChanged(Landroid/widget/EditText;)V

    .line 314
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsInputMethodEnabled:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0

    .line 369
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 256
    iget-object v5, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v5}, Lcom/meizu/widget/EditTextEx$StaticHint;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    .line 259
    .local v2, "paddingLeft":I
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getExtendedPaddingTop()I

    move-result v3

    .line 260
    .local v3, "paddingTop":I
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getDrawableState()[I

    move-result-object v4

    .line 261
    .local v4, "stateSet":[I
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 262
    .local v1, "hintColors":Landroid/content/res/ColorStateList;
    if-nez v1, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v0

    .line 267
    .local v0, "defColor":I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 268
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getScrollX()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getScrollY()I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 269
    iget-object v5, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getHeight()I

    move-result v6

    .line 270
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getExtendedPaddingBottom()I

    move-result v7

    .line 269
    sub-int/2addr v6, v7

    sub-int/2addr v6, v3

    invoke-virtual {v5, p1, v4, v0, v6}, Lcom/meizu/widget/EditTextEx$StaticHint;->drawHint(Landroid/graphics/Canvas;[III)V

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 265
    .end local v0    # "defColor":I
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .restart local v0    # "defColor":I
    goto :goto_1
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mOnPrivateIMECommandListener:Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mOnPrivateIMECommandListener:Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;

    invoke-interface {v0, p1, p2}, Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 374
    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x1

    return v0

    .line 378
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 339
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 340
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 338
    :cond_0
    return-void
.end method

.method public setCursorAlwaysVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    .line 391
    return-void
.end method

.method public final setInputMethodEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsInputMethodEnabled:Z

    .line 353
    return-void
.end method

.method public setMagnifierVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    .line 399
    return-void
.end method

.method public final setOnPrivateIMECommandListener(Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/meizu/widget/EditTextEx;->mOnPrivateIMECommandListener:Lcom/meizu/widget/EditTextEx$OnPrivateIMECommandListener;

    .line 346
    return-void
.end method

.method public setOptionsVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    .line 407
    return-void
.end method

.method public final setStaticHint(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/EditTextEx;->setStaticHint(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public final setStaticHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 117
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 114
    :cond_0
    return-void
.end method

.method public final setStaticHintGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintGravity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 204
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 201
    :cond_0
    return-void
.end method

.method public setStaticHintPaddingBottom(I)V
    .locals 1
    .param p1, "paddingBottom"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 244
    return-void
.end method

.method public setStaticHintPaddingLeft(I)V
    .locals 1
    .param p1, "paddingLeft"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 220
    return-void
.end method

.method public setStaticHintPaddingRight(I)V
    .locals 1
    .param p1, "paddingRight"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 228
    return-void
.end method

.method public setStaticHintPaddingTop(I)V
    .locals 1
    .param p1, "paddingTop"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 236
    return-void
.end method

.method public final setStaticHintTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintColor(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 141
    :cond_0
    return-void
.end method

.method public final setStaticHintTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintSize(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 166
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 163
    :cond_0
    return-void
.end method

.method public final setStaticHintWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintWidth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 185
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 182
    :cond_0
    return-void
.end method

.method public final showIMECoverView(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "optKey"    # Ljava/lang/String;
    .param p2, "optValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "pre":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/widget/EditTextEx;->mPrivateImeOptionsMap:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 289
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/meizu/widget/EditTextEx;->mPrivateImeOptionsMap:Ljava/util/Map;

    .line 291
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/EditTextEx;->mPrivateImeOptionsMap:Ljava/util/Map;

    invoke-static {v3, v4}, Landroid/view/inputmethod/EditorInfo;->splitPrivateImeOptions(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    sget-object v6, Lcom/meizu/widget/EditTextEx;->COVER_TYPE_ALL:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v2, v6, v4

    .line 293
    .local v2, "item":Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/widget/EditTextEx;->mPrivateImeOptionsMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 297
    iget-object v4, p0, Lcom/meizu/widget/EditTextEx;->mPrivateImeOptionsMap:Ljava/util/Map;

    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/EditTextEx;->mPrivateImeOptionsMap:Ljava/util/Map;

    invoke-static {v4}, Landroid/view/inputmethod/EditorInfo;->makePrivateImeOptions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "cur":Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 301
    invoke-virtual {p0, v0}, Lcom/meizu/widget/EditTextEx;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 302
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 303
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v1, :cond_3

    return v5

    .line 304
    :cond_3
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 307
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    const/4 v4, 0x1

    return v4
.end method
