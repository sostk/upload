.class public Lcom/meizu/widget/SystemLockView;
.super Landroid/widget/LinearLayout;
.source "SystemLockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/SystemLockView$OnPanelListener;,
        Lcom/meizu/widget/SystemLockView$dispalyTextMode;,
        Lcom/meizu/widget/SystemLockView$UnlockPatternListener;,
        Lcom/meizu/widget/SystemLockView$1;
    }
.end annotation


# static fields
.field public static final COMPLICATE:I = 0x1

.field private static final DELETE:I = 0x0

.field private static final DIGITALS:I = 0xc

.field private static final KEY_LEFT:Ljava/lang/String; = "left"

.field private static final KEY_RIGHT:Ljava/lang/String; = "right"

.field public static final MAX_CELL:I = 0x7fffffff

.field private static final OK:I = 0x1

.field public static final SIMPLE:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private digitPanel:Landroid/view/View;

.field private haschar:Z

.field private illegal:Z

.field private isInitKeyPadType:Z

.field private mBottomLayoutResId:I

.field private mCellCount:I

.field private mEditText:Landroid/widget/EditText;

.field private mEnableHapticFeedback:Z

.field private mIcons:[Landroid/graphics/drawable/Drawable;

.field private mIcons2:[Landroid/graphics/drawable/Drawable;

.field private mInStealthMode:Z

.field private mInputTextButton:Landroid/widget/ImageView;

.field private mInputTextButtonStat:I

.field private mInputTextButtonVisible:Z

.field private mIsNotify:Z

.field private mKeyPad:Lcom/meizu/widget/LockDigitView;

.field private mLeftButton:Landroid/widget/Button;

.field private mMaxCellLength:I

.field private mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

.field private mPassword:Ljava/lang/String;

.field private mReturnBtn:Landroid/widget/ImageView;

.field private mRightButton:Landroid/widget/Button;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mSpecial:Lcom/meizu/widget/LockPasswordView;

.field mTextWatcher:Landroid/text/TextWatcher;

.field private mTipTextView:Landroid/widget/TextView;

.field private mTipTextView2:Landroid/widget/TextView;

.field private mWindowRect:Landroid/graphics/Rect;

.field private maxlen:I

.field private mkeyPadType:I

.field private passwordLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/meizu/widget/SystemLockView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/widget/SystemLockView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/meizu/widget/SystemLockView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get3(Lcom/meizu/widget/SystemLockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/meizu/widget/SystemLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mIsNotify:Z

    return v0
.end method

.method static synthetic -get5(Lcom/meizu/widget/SystemLockView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    return v0
.end method

.method static synthetic -set0(Lcom/meizu/widget/SystemLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->haschar:Z

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/widget/SystemLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->illegal:Z

    return p1
.end method

.method static synthetic -set2(Lcom/meizu/widget/SystemLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mIsNotify:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/widget/SystemLockView;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 1
    .param p1, "cell"    # Lcom/meizu/widget/LockDigitView$Cell;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/meizu/widget/SystemLockView;Ljava/lang/String;)V
    .locals 0
    .param p1, "pressedDigit"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView;->addCell(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/meizu/widget/SystemLockView;Ljava/lang/String;)V
    .locals 0
    .param p1, "pressedString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView;->addPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/meizu/widget/SystemLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellFhish()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/meizu/widget/SystemLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyKeyLeftButtonClick()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/meizu/widget/SystemLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyKeyRightButtonClick()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "SystemLockView"

    sput-object v0, Lcom/meizu/widget/SystemLockView;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/SystemLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/SystemLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRoot:Landroid/widget/RelativeLayout;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 124
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 125
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    .line 127
    sget v0, Lcom/flyme/internal/R$layout;->systemlock_two_buttons_panel_for_lock_digit_panel:I

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    .line 130
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mIsNotify:Z

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->haschar:Z

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->illegal:Z

    .line 141
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->maxlen:I

    .line 142
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mIcons2:[Landroid/graphics/drawable/Drawable;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->isInitKeyPadType:Z

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    .line 437
    new-instance v0, Lcom/meizu/widget/SystemLockView$1;

    invoke-direct {v0, p0}, Lcom/meizu/widget/SystemLockView$1;-><init>(Lcom/meizu/widget/SystemLockView;)V

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 163
    sget-object v0, Lcom/flyme/internal/R$styleable;->SystemLockView:[I

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 165
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v0, Lcom/flyme/internal/R$styleable;->SystemLockView_isStealthMode:I

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    .line 167
    sget v0, Lcom/flyme/internal/R$styleable;->SystemLockView_enableHapticFeedback:I

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 169
    sget v0, Lcom/flyme/internal/R$styleable;->SystemLockView_maxCellLength:I

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 170
    const v1, 0x7fffffff

    .line 168
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    .line 172
    sget v0, Lcom/flyme/internal/R$styleable;->SystemLockView_bottomLayout:I

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    .line 171
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    .line 173
    sget v0, Lcom/flyme/internal/R$styleable;->SystemLockView_topButtonStat:I

    .line 174
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 173
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 176
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 177
    sget v1, Lcom/flyme/internal/R$layout;->systemlock_lock_digit_panel_meizu:I

    const/4 v2, 0x0

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->digitPanel:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->digitPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->addView(Landroid/view/View;)V

    .line 180
    sget v0, Lcom/flyme/internal/R$id;->keypadRoot:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRoot:Landroid/widget/RelativeLayout;

    .line 181
    sget v0, Lcom/flyme/internal/R$id;->inputTips:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 182
    sget v0, Lcom/flyme/internal/R$id;->text_button:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    .line 183
    sget v0, Lcom/flyme/internal/R$id;->keyPad:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    .line 184
    sget v0, Lcom/flyme/internal/R$id;->password_edit:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    .line 185
    sget v0, Lcom/flyme/internal/R$id;->textPad:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    .line 186
    sget v0, Lcom/flyme/internal/R$id;->inputTips2:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v0, 0xc

    if-ge v7, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mIcons2:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object v1, v0, v7

    .line 189
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    :cond_1
    sget v0, Lcom/flyme/internal/R$id;->special:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockPasswordView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    .line 199
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 201
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 204
    :cond_2
    const/4 v7, 0x0

    :goto_1
    const/16 v0, 0xc

    if-ge v7, v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$array;->lock_digit_icons_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 204
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$drawable;->ic_password_fill_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCircleSolidDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$drawable;->ic_password_gap_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCircleHollowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    sget v1, Lcom/flyme/internal/R$drawable;->lock_password_btn_delete_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const-string/jumbo v3, ""

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 214
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const-string/jumbo v3, ""

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 216
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->isInitKeyPadType:Z

    if-nez v0, :cond_4

    .line 217
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    invoke-direct {p0, v0}, Lcom/meizu/widget/SystemLockView;->changeType(I)V

    .line 219
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->setWidgetLayoutVisibility(Z)V

    .line 220
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updateWidgetLayout()V

    .line 222
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 159
    return-void
.end method

.method private addCell(Ljava/lang/String;)V
    .locals 2
    .param p1, "pressedDigit"    # Ljava/lang/String;

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 248
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 249
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 250
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellAdded()V

    .line 245
    return-void
.end method

.method private addPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "pressedString"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 529
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 530
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellAdded()V

    .line 526
    return-void
.end method

.method private changeType(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 497
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 498
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 500
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setVisibility(I)V

    .line 501
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 502
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mIcons2:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 503
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v1, v5}, Lcom/meizu/widget/LockDigitView;->setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 504
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/LockPasswordView;->setVisibility(I)V

    .line 505
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 506
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 507
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 508
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 510
    const-string/jumbo v2, "input_method"

    .line 508
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 511
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 496
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 513
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/meizu/widget/SystemLockView;->setMaxLen(I)V

    .line 514
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 516
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/LockDigitView;->setVisibility(I)V

    .line 517
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 518
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 519
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 520
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    new-instance v2, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;

    invoke-direct {v2, p0, v5}, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;-><init>(Lcom/meizu/widget/SystemLockView;Lcom/meizu/widget/SystemLockView$UnlockPatternListener;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V

    .line 521
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 522
    sget v3, Lcom/flyme/internal/R$drawable;->lock_digit_background_light:I

    .line 521
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 5
    .param p1, "cell"    # Lcom/meizu/widget/LockDigitView$Cell;

    .prologue
    .line 419
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v2

    .line 420
    .local v2, "r":I
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v0

    .line 421
    .local v0, "c":I
    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, 0x1

    .line 422
    .local v1, "num":I
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 423
    const-string/jumbo v3, "left"

    .line 431
    .local v3, "ret":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 424
    .end local v3    # "ret":Ljava/lang/String;
    :cond_0
    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 425
    const-string/jumbo v3, "0"

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 426
    .end local v3    # "ret":Ljava/lang/String;
    :cond_1
    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    .line 427
    const-string/jumbo v3, "right"

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 429
    .end local v3    # "ret":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onCellAdded(Ljava/lang/String;)V

    .line 280
    :cond_0
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    if-lt v0, v1, :cond_1

    .line 282
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mIsNotify:Z

    if-nez v0, :cond_1

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mIsNotify:Z

    .line 284
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellFhish()V

    .line 276
    :cond_1
    return-void
.end method

.method private notifyCellCleared()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onCellCleared(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method private notifyCellFhish()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onCellFhish(Ljava/lang/String;)V

    .line 289
    :cond_0
    return-void
.end method

.method private notifyInputTextButtonClick()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onInputTextButtonClick(Ljava/lang/String;)V

    .line 313
    :cond_0
    return-void
.end method

.method private notifyKeyLeftButtonClick()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onKeyLeftButtonClick(Ljava/lang/String;)V

    .line 319
    :cond_0
    return-void
.end method

.method private notifyKeyRightButtonClick()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onKeyRightButtonClick(Ljava/lang/String;)V

    .line 325
    :cond_0
    return-void
.end method

.method private notifyLeftButtonClick()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onLeftButtonClick(Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method

.method private notifyRightButtonClick()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onRightButtonClick(Ljava/lang/String;)V

    .line 301
    :cond_0
    return-void
.end method

.method private updateDeleteButtonStatu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    if-nez v0, :cond_1

    .line 266
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePasswordTextView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setVisibility(I)V

    .line 256
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    .line 259
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updateDeleteButtonStatu()V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->invalidate()V

    .line 254
    return-void
.end method

.method private updateWidgetLayout()V
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 228
    const-string/jumbo v3, "layout_inflater"

    .line 227
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 229
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/flyme/internal/R$id;->bottom_frame:I

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 230
    .local v1, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 231
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    if-eqz v2, :cond_2

    .line 232
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 237
    :cond_0
    :goto_0
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    sget v3, Lcom/flyme/internal/R$layout;->systemlock_two_buttons_panel_for_lock_digit_panel:I

    if-ne v2, v3, :cond_1

    .line 238
    sget v2, Lcom/flyme/internal/R$id;->left_button:I

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    .line 239
    sget v2, Lcom/flyme/internal/R$id;->right_button:I

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    .line 240
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_1
    return-void

    .line 234
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkChar()Z
    .locals 1

    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->haschar:Z

    return v0
.end method

.method public checkIllegal()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->illegal:Z

    return v0
.end method

.method public clearCell(Z)V
    .locals 5
    .param p1, "clearAll"    # Z

    .prologue
    const/4 v4, 0x0

    .line 663
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    if-lez v2, :cond_1

    .line 664
    if-eqz p1, :cond_3

    .line 665
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 666
    iput v4, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 667
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 668
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 680
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 681
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellCleared()V

    .line 682
    iput-boolean v4, p0, Lcom/meizu/widget/SystemLockView;->mIsNotify:Z

    .line 662
    :cond_1
    return-void

    .line 670
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    goto :goto_0

    .line 672
    :cond_3
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 674
    .local v1, "numString":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 673
    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 675
    .local v0, "newString":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 676
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 677
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    if-nez v2, :cond_0

    .line 678
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->deleteLastCell()V

    goto :goto_0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEnteredPassword()V
    .locals 3

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyKeyRightButtonClick()V

    .line 737
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 738
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 740
    const-string/jumbo v2, "input_method"

    .line 738
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 741
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 735
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 350
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    if-ne v1, v2, :cond_1

    .line 352
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 353
    const-string/jumbo v2, "input_method"

    .line 352
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 354
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 349
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    .line 356
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v1, :cond_2

    .line 357
    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    goto :goto_0

    .line 358
    :cond_2
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-ne v1, v2, :cond_3

    .line 359
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 361
    :cond_3
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 363
    :cond_4
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_5

    .line 364
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyLeftButtonClick()V

    goto :goto_0

    .line 365
    :cond_5
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_6

    .line 366
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyRightButtonClick()V

    goto :goto_0

    .line 368
    :cond_6
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyLeftButtonClick()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 333
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 334
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0, v1}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 336
    return v1

    .line 337
    :cond_0
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-ne v0, v1, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    .line 339
    return v1

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    .line 342
    return v1

    .line 345
    :cond_2
    return v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 377
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 375
    return-void
.end method

.method public setHollowVisible(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 537
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 536
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    .prologue
    .line 561
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    .line 560
    return-void
.end method

.method public setInputTextButtonStat(II)V
    .locals 2
    .param p1, "stat"    # I
    .param p2, "resId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 711
    if-nez p1, :cond_0

    .line 712
    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 710
    :goto_0
    return-void

    .line 713
    :cond_0
    if-ne p1, v1, :cond_1

    .line 714
    iput v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    goto :goto_0

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setInputTextButtonVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 724
    if-eqz p1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 729
    :goto_0
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    .line 723
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKeyPadType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->isInitKeyPadType:Z

    .line 762
    iput p1, p0, Lcom/meizu/widget/SystemLockView;->mkeyPadType:I

    .line 763
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView;->changeType(I)V

    .line 760
    return-void
.end method

.method public setMaxLen(I)V
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 653
    iput p1, p0, Lcom/meizu/widget/SystemLockView;->maxlen:I

    .line 654
    const v0, 0x7fffffff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    .line 655
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 656
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 652
    return-void
.end method

.method public setPanelListener(Lcom/meizu/widget/SystemLockView$OnPanelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/widget/SystemLockView$OnPanelListener;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    .line 689
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 571
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 570
    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 1
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->invalidate()V

    .line 577
    return-void
.end method

.method public setTip2(Ljava/lang/String;)V
    .locals 1
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->invalidate()V

    .line 780
    return-void
.end method

.method public setTip2_Visibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 791
    if-eqz p1, :cond_0

    .line 792
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 790
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTipAnim(Ljava/lang/String;)V
    .locals 13
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 586
    iget-object v6, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 588
    .local v0, "animTV":Landroid/widget/TextView;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 589
    .local v2, "mTextAnim":Landroid/animation/AnimatorSet;
    const-string/jumbo v6, "alpha"

    new-array v7, v11, [F

    aput v8, v7, v9

    aput v12, v7, v10

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 590
    .local v5, "textfadeoutAnimator":Landroid/animation/ObjectAnimator;
    const-string/jumbo v6, "alpha"

    new-array v7, v11, [F

    aput v12, v7, v9

    aput v8, v7, v10

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 591
    .local v4, "textfadeinAnimator":Landroid/animation/ObjectAnimator;
    new-array v6, v11, [F

    aput v8, v6, v9

    aput v12, v6, v10

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 592
    .local v1, "delbtnfadeoutAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/meizu/widget/SystemLockView$2;

    invoke-direct {v6, p0}, Lcom/meizu/widget/SystemLockView$2;-><init>(Lcom/meizu/widget/SystemLockView;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 603
    new-instance v6, Lcom/meizu/widget/SystemLockView$3;

    invoke-direct {v6, p0, v0, p1}, Lcom/meizu/widget/SystemLockView$3;-><init>(Lcom/meizu/widget/SystemLockView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 626
    const-string/jumbo v6, "translationX"

    new-array v7, v11, [F

    const/high16 v8, 0x43340000    # 180.0f

    aput v8, v7, v9

    aput v12, v7, v10

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 627
    .local v3, "textdirAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0xb4

    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 628
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 629
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 630
    new-array v6, v11, [Landroid/animation/Animator;

    aput-object v5, v6, v9

    aput-object v1, v6, v10

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 631
    new-array v6, v11, [Landroid/animation/Animator;

    aput-object v4, v6, v9

    aput-object v3, v6, v10

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 632
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 585
    return-void
.end method

.method public setTipAnimShake(Ljava/lang/String;)V
    .locals 6
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 640
    .local v0, "animTV":Landroid/widget/TextView;
    const-string/jumbo v2, "translationX"

    const/16 v3, 0x19

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 644
    const-wide/16 v4, 0x1a1

    .line 640
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 645
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 638
    return-void

    .line 640
    nop

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

.method public setWidgetLayoutVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 697
    sget v1, Lcom/flyme/internal/R$id;->bottom_frame:I

    invoke-virtual {p0, v1}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 698
    .local v0, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 699
    if-eqz p1, :cond_1

    .line 700
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
