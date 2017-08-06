.class public Lcom/meizu/widget/ShutdownLockView;
.super Landroid/widget/LinearLayout;
.source "ShutdownLockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/ShutdownLockView$OnPanelListener;,
        Lcom/meizu/widget/ShutdownLockView$dispalyTextMode;,
        Lcom/meizu/widget/ShutdownLockView$UnlockPatternListener;,
        Lcom/meizu/widget/ShutdownLockView$1;
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

.field private mCancelButton:Landroid/widget/TextView;

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

.field private mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

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

    sget-object v0, Lcom/meizu/widget/ShutdownLockView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/widget/ShutdownLockView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/ShutdownLockView;->mCellCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/meizu/widget/ShutdownLockView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get3(Lcom/meizu/widget/ShutdownLockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/meizu/widget/ShutdownLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->mIsNotify:Z

    return v0
.end method

.method static synthetic -get5(Lcom/meizu/widget/ShutdownLockView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/ShutdownLockView;->mMaxCellLength:I

    return v0
.end method

.method static synthetic -set0(Lcom/meizu/widget/ShutdownLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/widget/ShutdownLockView;->haschar:Z

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/widget/ShutdownLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/widget/ShutdownLockView;->illegal:Z

    return p1
.end method

.method static synthetic -set2(Lcom/meizu/widget/ShutdownLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/widget/ShutdownLockView;->mIsNotify:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/widget/ShutdownLockView;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 1
    .param p1, "cell"    # Lcom/meizu/widget/LockDigitView$Cell;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/widget/ShutdownLockView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/meizu/widget/ShutdownLockView;Ljava/lang/String;)V
    .locals 0
    .param p1, "pressedDigit"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/widget/ShutdownLockView;->addCell(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/meizu/widget/ShutdownLockView;Ljava/lang/String;)V
    .locals 0
    .param p1, "pressedString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/widget/ShutdownLockView;->addPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/meizu/widget/ShutdownLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyCellFhish()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/meizu/widget/ShutdownLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyKeyLeftButtonClick()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/meizu/widget/ShutdownLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyKeyRightButtonClick()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "ShutdownLockView"

    sput-object v0, Lcom/meizu/widget/ShutdownLockView;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/ShutdownLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/ShutdownLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInStealthMode:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->mEnableHapticFeedback:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonStat:I

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView:Landroid/widget/TextView;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mRoot:Landroid/widget/RelativeLayout;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mLeftButton:Landroid/widget/Button;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mRightButton:Landroid/widget/Button;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mReturnBtn:Landroid/widget/ImageView;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->mCellCount:I

    .line 125
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    .line 126
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->mMaxCellLength:I

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mWindowRect:Landroid/graphics/Rect;

    .line 128
    sget v0, Lcom/flyme/internal/R$layout;->systemlock_two_buttons_panel_for_lock_digit_panel:I

    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->mBottomLayoutResId:I

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonVisible:Z

    .line 131
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->mIsNotify:Z

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->mkeyPadType:I

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->haschar:Z

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->illegal:Z

    .line 142
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->maxlen:I

    .line 143
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mIcons2:[Landroid/graphics/drawable/Drawable;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->isInitKeyPadType:Z

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView2:Landroid/widget/TextView;

    .line 421
    new-instance v0, Lcom/meizu/widget/ShutdownLockView$1;

    invoke-direct {v0, p0}, Lcom/meizu/widget/ShutdownLockView$1;-><init>(Lcom/meizu/widget/ShutdownLockView;)V

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 166
    sget-object v0, Lcom/flyme/internal/R$styleable;->SystemLockView:[I

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 168
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v0, Lcom/flyme/internal/R$styleable;->SystemLockView_isStealthMode:I

    const/4 v1, 0x0

    .line 167
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInStealthMode:Z

    .line 170
    sget v0, Lcom/flyme/internal/R$styleable;->SystemLockView_enableHapticFeedback:I

    const/4 v1, 0x0

    .line 169
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->mEnableHapticFeedback:Z

    .line 172
    sget v0, Lcom/flyme/internal/R$styleable;->SystemLockView_maxCellLength:I

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 173
    const v1, 0x7fffffff

    .line 171
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->mMaxCellLength:I

    .line 175
    sget v0, Lcom/flyme/internal/R$styleable;->SystemLockView_bottomLayout:I

    iget v1, p0, Lcom/meizu/widget/ShutdownLockView;->mBottomLayoutResId:I

    .line 174
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->mBottomLayoutResId:I

    .line 176
    sget v0, Lcom/flyme/internal/R$styleable;->SystemLockView_topButtonStat:I

    .line 177
    iget v1, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonStat:I

    .line 176
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonStat:I

    .line 179
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 180
    sget v1, Lcom/flyme/internal/R$layout;->flyme_confirm_password_view:I

    const/4 v2, 0x0

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->digitPanel:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->digitPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ShutdownLockView;->addView(Landroid/view/View;)V

    .line 183
    sget v0, Lcom/flyme/internal/R$id;->keypadRoot:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ShutdownLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mRoot:Landroid/widget/RelativeLayout;

    .line 184
    sget v0, Lcom/flyme/internal/R$id;->inputTips:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ShutdownLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    sget v0, Lcom/flyme/internal/R$id;->text_button:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ShutdownLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    .line 187
    sget v0, Lcom/flyme/internal/R$id;->keyPad:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ShutdownLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView;

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    .line 188
    sget v0, Lcom/flyme/internal/R$id;->password_edit:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ShutdownLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    .line 189
    sget v0, Lcom/flyme/internal/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ShutdownLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mCancelButton:Landroid/widget/TextView;

    .line 190
    sget v0, Lcom/flyme/internal/R$id;->textPad:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ShutdownLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    .line 191
    sget v0, Lcom/flyme/internal/R$id;->inputTips2:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ShutdownLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView2:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v0, 0xc

    if-ge v7, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mIcons2:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object v1, v0, v7

    .line 194
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mReturnBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_1
    sget v0, Lcom/flyme/internal/R$id;->special:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ShutdownLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockPasswordView;

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    .line 204
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/ShutdownLockView;->mMaxCellLength:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 206
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/ShutdownLockView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 209
    :cond_2
    const/4 v7, 0x0

    :goto_1
    const/16 v0, 0xc

    if-ge v7, v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/ShutdownLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$array;->lock_digit_icons:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 209
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {p0}, Lcom/meizu/widget/ShutdownLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$drawable;->ic_password_fill:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCircleSolidDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {p0}, Lcom/meizu/widget/ShutdownLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$drawable;->ic_password_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCircleHollowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    sget v1, Lcom/flyme/internal/R$drawable;->lock_password_btn_delete:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const-string/jumbo v3, ""

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 219
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const-string/jumbo v3, ""

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 221
    iget-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->isInitKeyPadType:Z

    if-nez v0, :cond_4

    .line 222
    iget v0, p0, Lcom/meizu/widget/ShutdownLockView;->mkeyPadType:I

    invoke-direct {p0, v0}, Lcom/meizu/widget/ShutdownLockView;->changeType(I)V

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->updatePasswordTextView()V

    .line 162
    return-void
.end method

.method private addCell(Ljava/lang/String;)V
    .locals 2
    .param p1, "pressedDigit"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    .line 232
    iget v0, p0, Lcom/meizu/widget/ShutdownLockView;->mCellCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->mCellCount:I

    .line 233
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->updatePasswordTextView()V

    .line 234
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyCellAdded()V

    .line 229
    return-void
.end method

.method private addPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "pressedString"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iput-object p1, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->mCellCount:I

    .line 514
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->updatePasswordTextView()V

    .line 515
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyCellAdded()V

    .line 510
    :cond_0
    return-void
.end method

.method private changeType(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 481
    iget v1, p0, Lcom/meizu/widget/ShutdownLockView;->mkeyPadType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 482
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ShutdownLockView;->setMaxLen(I)V

    .line 484
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setVisibility(I)V

    .line 485
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 486
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    iget-object v2, p0, Lcom/meizu/widget/ShutdownLockView;->mIcons2:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 487
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v1, v5}, Lcom/meizu/widget/LockDigitView;->setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/LockPasswordView;->setVisibility(I)V

    .line 489
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/meizu/widget/ShutdownLockView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 490
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 491
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 492
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 494
    const-string/jumbo v2, "input_method"

    .line 492
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 495
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 480
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 497
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ShutdownLockView;->setMaxLen(I)V

    .line 498
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 500
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v1, v3}, Lcom/meizu/widget/LockDigitView;->setVisibility(I)V

    .line 501
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 502
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    iget-object v2, p0, Lcom/meizu/widget/ShutdownLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 503
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 504
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    new-instance v2, Lcom/meizu/widget/ShutdownLockView$UnlockPatternListener;

    invoke-direct {v2, p0, v5}, Lcom/meizu/widget/ShutdownLockView$UnlockPatternListener;-><init>(Lcom/meizu/widget/ShutdownLockView;Lcom/meizu/widget/ShutdownLockView$UnlockPatternListener;)V

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V

    .line 505
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {p0}, Lcom/meizu/widget/ShutdownLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 506
    sget v3, Lcom/flyme/internal/R$drawable;->lock_digit_background:I

    .line 505
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/LockDigitView;->setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 5
    .param p1, "cell"    # Lcom/meizu/widget/LockDigitView$Cell;

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v2

    .line 404
    .local v2, "r":I
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v0

    .line 405
    .local v0, "c":I
    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, 0x1

    .line 406
    .local v1, "num":I
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 407
    const-string/jumbo v3, "left"

    .line 415
    .local v3, "ret":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 408
    .end local v3    # "ret":Ljava/lang/String;
    :cond_0
    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 409
    const-string/jumbo v3, "0"

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 410
    .end local v3    # "ret":Ljava/lang/String;
    :cond_1
    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    .line 411
    const-string/jumbo v3, "right"

    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 413
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
    .line 261
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/ShutdownLockView$OnPanelListener;->onCellAdded(Ljava/lang/String;)V

    .line 260
    :cond_0
    return-void
.end method

.method private notifyCellCleared()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/ShutdownLockView$OnPanelListener;->onCellCleared(Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method private notifyCellFhish()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/ShutdownLockView$OnPanelListener;->onCellFhish(Ljava/lang/String;)V

    .line 273
    :cond_0
    return-void
.end method

.method private notifyInputTextButtonClick()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/ShutdownLockView$OnPanelListener;->onInputTextButtonClick(Ljava/lang/String;)V

    .line 297
    :cond_0
    return-void
.end method

.method private notifyKeyLeftButtonClick()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/ShutdownLockView$OnPanelListener;->onKeyLeftButtonClick(Ljava/lang/String;)V

    .line 303
    :cond_0
    return-void
.end method

.method private notifyKeyRightButtonClick()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/ShutdownLockView$OnPanelListener;->onKeyRightButtonClick(Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method

.method private notifyLeftButtonClick()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/ShutdownLockView$OnPanelListener;->onLeftButtonClick(Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method

.method private notifyRightButtonClick()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/ShutdownLockView$OnPanelListener;->onRightButtonClick(Ljava/lang/String;)V

    .line 285
    :cond_0
    return-void
.end method

.method private updateDeleteButtonStatu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    iget v0, p0, Lcom/meizu/widget/ShutdownLockView;->mCellCount:I

    if-nez v0, :cond_1

    .line 250
    iget-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePasswordTextView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setVisibility(I)V

    .line 240
    iget v0, p0, Lcom/meizu/widget/ShutdownLockView;->mkeyPadType:I

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/ShutdownLockView;->mCellCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    .line 243
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->updateDeleteButtonStatu()V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/ShutdownLockView;->invalidate()V

    .line 238
    return-void
.end method


# virtual methods
.method public checkChar()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->haschar:Z

    return v0
.end method

.method public checkIllegal()Z
    .locals 1

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->illegal:Z

    return v0
.end method

.method public clearCell(Z)V
    .locals 5
    .param p1, "clearAll"    # Z

    .prologue
    const/4 v4, 0x0

    .line 649
    iget v2, p0, Lcom/meizu/widget/ShutdownLockView;->mCellCount:I

    if-lez v2, :cond_1

    .line 650
    if-eqz p1, :cond_3

    .line 651
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    .line 652
    iput v4, p0, Lcom/meizu/widget/ShutdownLockView;->mCellCount:I

    .line 653
    iget v2, p0, Lcom/meizu/widget/ShutdownLockView;->mkeyPadType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 654
    iget-object v2, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 666
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->updatePasswordTextView()V

    .line 667
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyCellCleared()V

    .line 668
    iput-boolean v4, p0, Lcom/meizu/widget/ShutdownLockView;->mIsNotify:Z

    .line 648
    :cond_1
    return-void

    .line 656
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    goto :goto_0

    .line 658
    :cond_3
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    .line 660
    .local v1, "numString":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 659
    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 661
    .local v0, "newString":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/ShutdownLockView;->mPassword:Ljava/lang/String;

    .line 662
    iget v2, p0, Lcom/meizu/widget/ShutdownLockView;->mCellCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/meizu/widget/ShutdownLockView;->mCellCount:I

    .line 663
    iget v2, p0, Lcom/meizu/widget/ShutdownLockView;->mkeyPadType:I

    if-nez v2, :cond_0

    .line 664
    iget-object v2, p0, Lcom/meizu/widget/ShutdownLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->deleteLastCell()V

    goto :goto_0
.end method

.method public getCancelText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mCancelButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEnteredPassword()V
    .locals 3

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyKeyRightButtonClick()V

    .line 709
    iget v1, p0, Lcom/meizu/widget/ShutdownLockView;->mkeyPadType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 710
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 712
    const-string/jumbo v2, "input_method"

    .line 710
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 713
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 707
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->mEnableHapticFeedback:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 334
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/meizu/widget/ShutdownLockView;->mkeyPadType:I

    if-ne v1, v2, :cond_1

    .line 336
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 337
    const-string/jumbo v2, "input_method"

    .line 336
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 338
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 333
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    .line 340
    iget v1, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonStat:I

    if-nez v1, :cond_2

    .line 341
    invoke-virtual {p0, v2}, Lcom/meizu/widget/ShutdownLockView;->clearCell(Z)V

    goto :goto_0

    .line 342
    :cond_2
    iget v1, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonStat:I

    if-ne v1, v2, :cond_3

    .line 343
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 345
    :cond_3
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 347
    :cond_4
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mLeftButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_5

    .line 348
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyLeftButtonClick()V

    goto :goto_0

    .line 349
    :cond_5
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mRightButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_6

    .line 350
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyRightButtonClick()V

    goto :goto_0

    .line 352
    :cond_6
    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/ShutdownLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyLeftButtonClick()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 317
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 318
    iget v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0, v1}, Lcom/meizu/widget/ShutdownLockView;->clearCell(Z)V

    .line 320
    return v1

    .line 321
    :cond_0
    iget v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonStat:I

    if-ne v0, v1, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyInputTextButtonClick()V

    .line 323
    return v1

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->notifyInputTextButtonClick()V

    .line 326
    return v1

    .line 329
    :cond_2
    return v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 360
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 361
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->updatePasswordTextView()V

    .line 359
    return-void
.end method

.method public setHollowVisible(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 523
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 522
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/meizu/widget/ShutdownLockView;->mInStealthMode:Z

    .line 546
    return-void
.end method

.method public setInputTextButtonStat(II)V
    .locals 2
    .param p1, "stat"    # I
    .param p2, "resId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 683
    if-nez p1, :cond_0

    .line 684
    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonStat:I

    .line 682
    :goto_0
    return-void

    .line 685
    :cond_0
    if-ne p1, v1, :cond_1

    .line 686
    iput v1, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonStat:I

    goto :goto_0

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setInputTextButtonVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 696
    if-eqz p1, :cond_0

    .line 697
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 701
    :goto_0
    iput-boolean p1, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButtonVisible:Z

    .line 695
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKeyPadType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/ShutdownLockView;->isInitKeyPadType:Z

    .line 734
    iput p1, p0, Lcom/meizu/widget/ShutdownLockView;->mkeyPadType:I

    .line 735
    invoke-direct {p0, p1}, Lcom/meizu/widget/ShutdownLockView;->changeType(I)V

    .line 732
    return-void
.end method

.method public setMaxLen(I)V
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 639
    iput p1, p0, Lcom/meizu/widget/ShutdownLockView;->maxlen:I

    .line 640
    const v0, 0x7fffffff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/ShutdownLockView;->mMaxCellLength:I

    .line 641
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/ShutdownLockView;->mMaxCellLength:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 642
    invoke-direct {p0}, Lcom/meizu/widget/ShutdownLockView;->updatePasswordTextView()V

    .line 638
    return-void
.end method

.method public setPanelListener(Lcom/meizu/widget/ShutdownLockView$OnPanelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/meizu/widget/ShutdownLockView;->mPanelListener:Lcom/meizu/widget/ShutdownLockView$OnPanelListener;

    .line 675
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 557
    iput-boolean p1, p0, Lcom/meizu/widget/ShutdownLockView;->mEnableHapticFeedback:Z

    .line 556
    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 1
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    invoke-virtual {p0}, Lcom/meizu/widget/ShutdownLockView;->invalidate()V

    .line 563
    return-void
.end method

.method public setTip2(Ljava/lang/String;)V
    .locals 1
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    invoke-virtual {p0}, Lcom/meizu/widget/ShutdownLockView;->invalidate()V

    .line 752
    return-void
.end method

.method public setTip2_Visibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 763
    if-eqz p1, :cond_0

    .line 764
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 762
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView2:Landroid/widget/TextView;

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

    .line 572
    iget-object v6, p0, Lcom/meizu/widget/ShutdownLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView:Landroid/widget/TextView;

    .line 574
    .local v0, "animTV":Landroid/widget/TextView;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 575
    .local v2, "mTextAnim":Landroid/animation/AnimatorSet;
    const-string/jumbo v6, "alpha"

    new-array v7, v11, [F

    aput v8, v7, v9

    aput v12, v7, v10

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 576
    .local v5, "textfadeoutAnimator":Landroid/animation/ObjectAnimator;
    const-string/jumbo v6, "alpha"

    new-array v7, v11, [F

    aput v12, v7, v9

    aput v8, v7, v10

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 577
    .local v4, "textfadeinAnimator":Landroid/animation/ObjectAnimator;
    new-array v6, v11, [F

    aput v8, v6, v9

    aput v12, v6, v10

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 578
    .local v1, "delbtnfadeoutAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/meizu/widget/ShutdownLockView$2;

    invoke-direct {v6, p0}, Lcom/meizu/widget/ShutdownLockView$2;-><init>(Lcom/meizu/widget/ShutdownLockView;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 589
    new-instance v6, Lcom/meizu/widget/ShutdownLockView$3;

    invoke-direct {v6, p0, v0, p1}, Lcom/meizu/widget/ShutdownLockView$3;-><init>(Lcom/meizu/widget/ShutdownLockView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 612
    const-string/jumbo v6, "translationX"

    new-array v7, v11, [F

    const/high16 v8, 0x43340000    # 180.0f

    aput v8, v7, v9

    aput v12, v7, v10

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 613
    .local v3, "textdirAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0xb4

    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 614
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 615
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 616
    new-array v6, v11, [Landroid/animation/Animator;

    aput-object v5, v6, v9

    aput-object v1, v6, v10

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 617
    new-array v6, v11, [Landroid/animation/Animator;

    aput-object v4, v6, v9

    aput-object v3, v6, v10

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 618
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 571
    return-void
.end method

.method public setTipAnimShake(Ljava/lang/String;)V
    .locals 6
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView:Landroid/widget/TextView;

    .line 626
    .local v0, "animTV":Landroid/widget/TextView;
    const-string/jumbo v2, "translationX"

    const/16 v3, 0x19

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 630
    const-wide/16 v4, 0x1a1

    .line 626
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 631
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/meizu/widget/ShutdownLockView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 624
    return-void

    .line 626
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
