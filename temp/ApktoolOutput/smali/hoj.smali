.class public final Lhoj;
.super Landroid/app/Dialog;
.source "PhoenixAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# static fields
.field private static final c:I


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:Ljava/lang/CharSequence;

.field private E:Landroid/view/View$OnClickListener;

.field a:Landroid/view/View;

.field b:Landroid/os/Handler;

.field private d:Landroid/content/Context;

.field private e:Landroid/view/Window;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/wandoujia/image/view/AsyncImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/ScrollView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/widget/FrameLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Landroid/os/Message;

.field private u:Landroid/os/Message;

.field private v:Landroid/os/Message;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/wandoujia/ripple_framework/R$style;->JupiterAlertDialog:I

    sput v0, Lhoj;->c:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 115
    sget v0, Lhoj;->c:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 64
    iput-boolean v1, p0, Lhoj;->w:Z

    .line 65
    iput-boolean v1, p0, Lhoj;->x:Z

    .line 66
    iput-boolean v1, p0, Lhoj;->y:Z

    .line 67
    new-instance v0, Lhok;

    invoke-direct {v0, p0}, Lhok;-><init>(Lhoj;)V

    iput-object v0, p0, Lhoj;->E:Landroid/view/View$OnClickListener;

    .line 116
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 117
    instance-of v0, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 119
    check-cast v0, Landroid/view/ContextThemeWrapper;

    .line 120
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhoj;->d:Landroid/content/Context;

    .line 128
    :goto_0
    sget v0, Lcom/wandoujia/ripple_framework/R$layout;->rip_alert_dialog:I

    invoke-virtual {p0, v0}, Lhoj;->setContentView(I)V

    .line 129
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_parentPanel:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    .line 130
    new-instance v0, Lhor;

    invoke-direct {v0, p0}, Lhor;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lhoj;->b:Landroid/os/Handler;

    .line 131
    invoke-virtual {p0}, Lhoj;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lhoj;->e:Landroid/view/Window;

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lhoj;->setCanceledOnTouchOutside(Z)V

    .line 133
    return-void

    .line 123
    :cond_0
    iput-object p1, p0, Lhoj;->d:Landroid/content/Context;

    goto :goto_0

    .line 126
    :cond_1
    iput-object p1, p0, Lhoj;->d:Landroid/content/Context;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 146
    invoke-static {p0}, Lhoj;->c(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lhoj;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lhoj;->q:Landroid/widget/Button;

    return-object v0
.end method

.method private static a(Landroid/widget/Button;)V
    .locals 2
    .parameter

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 430
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 431
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    return-void
.end method

.method static synthetic b(Lhoj;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lhoj;->t:Landroid/os/Message;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Landroid/view/Display;
    .locals 1
    .parameter

    .prologue
    .line 136
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 140
    invoke-static {p0}, Lhoj;->b(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-static {p0}, Lhoj;->b(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lhoj;->b(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    div-int/lit8 v0, v0, 0x64

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lhoj;->b(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    div-int/lit8 v0, v0, 0x64

    goto :goto_0
.end method

.method static synthetic c(Lhoj;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lhoj;->r:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lhoj;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lhoj;->u:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic e(Lhoj;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lhoj;->s:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lhoj;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lhoj;->v:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Lhoj;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lhoj;->E:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 154
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_contentPanel:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lhoj;->j:Landroid/widget/LinearLayout;

    .line 155
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 156
    iget-object v1, p0, Lhoj;->e:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 160
    iget-object v1, p0, Lhoj;->d:Landroid/content/Context;

    invoke-static {v1}, Lhoj;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 170
    iget-object v1, p0, Lhoj;->e:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 172
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_scrollView:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lhoj;->k:Landroid/widget/ScrollView;

    iget-object v0, p0, Lhoj;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_message:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhoj;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lhoj;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhoj;->C:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lhoj;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lhoj;->C:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    :goto_0
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_positiveButton:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhoj;->q:Landroid/widget/Button;

    iget-object v0, p0, Lhoj;->q:Landroid/widget/Button;

    new-instance v1, Lhol;

    invoke-direct {v1, p0}, Lhol;-><init>(Lhoj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhoj;->z:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lhoj;->q:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    :goto_1
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_negativeButton:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhoj;->r:Landroid/widget/Button;

    iget-object v0, p0, Lhoj;->r:Landroid/widget/Button;

    new-instance v4, Lhom;

    invoke-direct {v4, p0}, Lhom;-><init>(Lhoj;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhoj;->A:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lhoj;->r:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_neutraButton:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhoj;->s:Landroid/widget/Button;

    iget-object v0, p0, Lhoj;->s:Landroid/widget/Button;

    new-instance v4, Lhon;

    invoke-direct {v4, p0}, Lhon;-><init>(Lhoj;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhoj;->B:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lhoj;->s:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->close:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhoj;->p:Landroid/view/View;

    iget-object v0, p0, Lhoj;->p:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhoj;->p:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lhoj;->p:Landroid/view/View;

    new-instance v4, Lhoo;

    invoke-direct {v4, p0}, Lhoo;-><init>(Lhoj;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-boolean v0, p0, Lhoj;->w:Z

    if-eqz v0, :cond_11

    move v0, v3

    :goto_4
    iget-boolean v4, p0, Lhoj;->x:Z

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-boolean v4, p0, Lhoj;->y:Z

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-ne v0, v3, :cond_a

    move v0, v3

    :goto_5
    if-eqz v0, :cond_4

    if-ne v1, v3, :cond_b

    iget-object v0, p0, Lhoj;->q:Landroid/widget/Button;

    invoke-static {v0}, Lhoj;->a(Landroid/widget/Button;)V

    :cond_4
    :goto_6
    if-eqz v1, :cond_d

    move v1, v3

    .line 174
    :goto_7
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_topPanel:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lhoj;->f:Landroid/widget/LinearLayout;

    .line 175
    iget-object v4, p0, Lhoj;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lhoj;->D:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_8
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_icon:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lhoj;->h:Lcom/wandoujia/image/view/AsyncImageView;

    if-eqz v3, :cond_f

    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_alertTitle:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhoj;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lhoj;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lhoj;->D:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhoj;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lhoj;->h:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v2}, Lcom/wandoujia/image/view/AsyncImageView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lhoj;->h:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v3}, Lcom/wandoujia/image/view/AsyncImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lhoj;->h:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v4}, Lcom/wandoujia/image/view/AsyncImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lhoj;->h:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v5}, Lcom/wandoujia/image/view/AsyncImageView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lhoj;->h:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v6}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    .line 176
    :goto_9
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_buttonPanel:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lhoj;->o:Landroid/widget/LinearLayout;

    .line 177
    if-nez v1, :cond_5

    .line 178
    iget-object v0, p0, Lhoj;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    :cond_5
    iget-object v0, p0, Lhoj;->a:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 181
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_customPanel:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lhoj;->m:Landroid/widget/FrameLayout;

    .line 182
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_custom:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lhoj;->n:Landroid/widget/FrameLayout;

    .line 183
    iget-object v0, p0, Lhoj;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 184
    iget-object v0, p0, Lhoj;->n:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lhoj;->a:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    :goto_a
    return-void

    .line 172
    :cond_6
    iget-object v0, p0, Lhoj;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 173
    :cond_7
    iget-object v0, p0, Lhoj;->q:Landroid/widget/Button;

    iget-object v1, p0, Lhoj;->z:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhoj;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lhoj;->r:Landroid/widget/Button;

    iget-object v4, p0, Lhoj;->A:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhoj;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lhoj;->s:Landroid/widget/Button;

    iget-object v4, p0, Lhoj;->B:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhoj;->s:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x4

    goto/16 :goto_3

    :cond_a
    move v0, v2

    goto/16 :goto_5

    :cond_b
    const/4 v0, 0x2

    if-ne v1, v0, :cond_c

    iget-object v0, p0, Lhoj;->r:Landroid/widget/Button;

    invoke-static {v0}, Lhoj;->a(Landroid/widget/Button;)V

    goto/16 :goto_6

    :cond_c
    const/4 v0, 0x4

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lhoj;->s:Landroid/widget/Button;

    invoke-static {v0}, Lhoj;->a(Landroid/widget/Button;)V

    goto/16 :goto_6

    :cond_d
    move v1, v2

    goto/16 :goto_7

    :cond_e
    move v3, v2

    .line 175
    goto/16 :goto_8

    :cond_f
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_title_template:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lhoj;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lhoj;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lhoj;->h:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v6}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 187
    :cond_10
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->phoenix_alert_dialog_customPanel:I

    invoke-virtual {p0, v0}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lhoj;->m:Landroid/widget/FrameLayout;

    .line 192
    iget-object v0, p0, Lhoj;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_a

    :cond_11
    move v0, v2

    goto/16 :goto_4
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 284
    if-eqz p3, :cond_0

    .line 285
    iget-object v0, p0, Lhoj;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 288
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :pswitch_0
    iput-object p2, p0, Lhoj;->z:Ljava/lang/CharSequence;

    .line 292
    iput-object p4, p0, Lhoj;->t:Landroid/os/Message;

    .line 293
    iput-boolean v1, p0, Lhoj;->w:Z

    .line 306
    :goto_0
    return-void

    .line 297
    :pswitch_1
    iput-object p2, p0, Lhoj;->A:Ljava/lang/CharSequence;

    .line 298
    iput-object p4, p0, Lhoj;->u:Landroid/os/Message;

    .line 299
    iput-boolean v1, p0, Lhoj;->x:Z

    goto :goto_0

    .line 303
    :pswitch_2
    iput-object p2, p0, Lhoj;->B:Ljava/lang/CharSequence;

    .line 304
    iput-object p4, p0, Lhoj;->v:Landroid/os/Message;

    .line 305
    iput-boolean v1, p0, Lhoj;->y:Z

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    iput-object p1, p0, Lhoj;->D:Ljava/lang/CharSequence;

    .line 243
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    iput-object p1, p0, Lhoj;->C:Ljava/lang/CharSequence;

    .line 249
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 0

    .prologue
    .line 451
    invoke-virtual {p0}, Lhoj;->a()V

    .line 452
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 453
    return-void
.end method
