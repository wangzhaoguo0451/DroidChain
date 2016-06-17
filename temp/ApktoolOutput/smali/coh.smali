.class public final Lcoh;
.super Landroid/app/Dialog;
.source "AccountBaseAlertDialog.java"


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Ljava/lang/CharSequence;

.field private C:Landroid/view/View$OnClickListener;

.field a:Landroid/view/View;

.field b:Ljava/lang/CharSequence;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/Window;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ScrollView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/os/Message;

.field private s:Landroid/os/Message;

.field private t:Landroid/os/Message;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/CharSequence;

.field private y:Ljava/lang/CharSequence;

.field private z:Ljava/lang/CharSequence;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 96
    sget v0, Lcom/wandoujia/account/R$style;->account_base_alertDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    iput-boolean v1, p0, Lcoh;->u:Z

    .line 57
    iput-boolean v1, p0, Lcoh;->v:Z

    .line 58
    iput-boolean v1, p0, Lcoh;->w:Z

    .line 69
    new-instance v0, Lcoi;

    invoke-direct {v0, p0}, Lcoi;-><init>(Lcoh;)V

    iput-object v0, p0, Lcoh;->C:Landroid/view/View$OnClickListener;

    .line 97
    iput-object p1, p0, Lcoh;->c:Landroid/content/Context;

    .line 98
    sget v0, Lcom/wandoujia/account/R$layout;->account_base_alert_dialog:I

    invoke-virtual {p0, v0}, Lcoh;->setContentView(I)V

    .line 99
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_parentPanel:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    .line 100
    new-instance v0, Lcol;

    invoke-direct {v0, p0}, Lcol;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcoh;->A:Landroid/os/Handler;

    .line 101
    invoke-virtual {p0}, Lcoh;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcoh;->d:Landroid/view/Window;

    .line 102
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/Display;
    .locals 1
    .parameter

    .prologue
    .line 105
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcoh;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcoh;->o:Landroid/widget/Button;

    return-object v0
.end method

.method private static a(Landroid/widget/Button;)V
    .locals 2
    .parameter

    .prologue
    .line 341
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 342
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 343
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    return-void
.end method

.method static synthetic b(Lcoh;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcoh;->r:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic c(Lcoh;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcoh;->p:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcoh;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcoh;->s:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic e(Lcoh;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcoh;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcoh;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcoh;->t:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Lcoh;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcoh;->A:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 123
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_contentPanel:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcoh;->i:Landroid/widget/LinearLayout;

    .line 124
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 125
    iget-object v0, p0, Lcoh;->d:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 129
    iget-object v0, p0, Lcoh;->c:Landroid/content/Context;

    invoke-static {v0}, Lcoh;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-static {v0}, Lcoh;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_5

    invoke-static {v0}, Lcoh;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    div-int/lit8 v0, v0, 0x64

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 139
    iget-object v0, p0, Lcoh;->d:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 141
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_scrollView:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcoh;->j:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcoh;->j:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_message:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcoh;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcoh;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcoh;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcoh;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcoh;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    :goto_1
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_positiveButton:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcoh;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcoh;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcoh;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcoh;->x:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcoh;->o:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    :goto_2
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_negativeButton:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcoh;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcoh;->p:Landroid/widget/Button;

    iget-object v4, p0, Lcoh;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcoh;->y:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcoh;->p:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_neutraButton:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcoh;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcoh;->q:Landroid/widget/Button;

    iget-object v4, p0, Lcoh;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcoh;->z:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcoh;->q:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    iget-boolean v0, p0, Lcoh;->u:Z

    if-eqz v0, :cond_11

    move v0, v3

    :goto_5
    iget-boolean v4, p0, Lcoh;->v:Z

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-boolean v4, p0, Lcoh;->w:Z

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ne v0, v3, :cond_a

    move v0, v3

    :goto_6
    if-eqz v0, :cond_3

    if-ne v1, v3, :cond_b

    iget-object v0, p0, Lcoh;->o:Landroid/widget/Button;

    invoke-static {v0}, Lcoh;->a(Landroid/widget/Button;)V

    :cond_3
    :goto_7
    if-eqz v1, :cond_d

    move v1, v3

    .line 143
    :goto_8
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_topPanel:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcoh;->e:Landroid/widget/LinearLayout;

    .line 144
    iget-object v4, p0, Lcoh;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcoh;->B:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_9
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_icon:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcoh;->g:Landroid/widget/ImageView;

    if-eqz v3, :cond_f

    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_alertTitle:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcoh;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcoh;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcoh;->B:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcoh;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcoh;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcoh;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcoh;->g:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcoh;->g:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcoh;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    :goto_a
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_buttonPanel:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcoh;->n:Landroid/widget/LinearLayout;

    .line 146
    if-nez v1, :cond_4

    .line 147
    iget-object v0, p0, Lcoh;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    :cond_4
    iget-object v0, p0, Lcoh;->a:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 150
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_customPanel:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcoh;->l:Landroid/widget/FrameLayout;

    .line 151
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_custom:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcoh;->m:Landroid/widget/FrameLayout;

    .line 152
    iget-object v0, p0, Lcoh;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 153
    iget-object v0, p0, Lcoh;->m:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcoh;->a:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    :goto_b
    return-void

    .line 129
    :cond_5
    invoke-static {v0}, Lcoh;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    div-int/lit8 v0, v0, 0x64

    goto/16 :goto_0

    .line 141
    :cond_6
    iget-object v0, p0, Lcoh;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 142
    :cond_7
    iget-object v0, p0, Lcoh;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcoh;->x:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcoh;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcoh;->p:Landroid/widget/Button;

    iget-object v4, p0, Lcoh;->y:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcoh;->p:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x2

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcoh;->q:Landroid/widget/Button;

    iget-object v4, p0, Lcoh;->z:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcoh;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x4

    goto/16 :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_6

    :cond_b
    const/4 v0, 0x2

    if-ne v1, v0, :cond_c

    iget-object v0, p0, Lcoh;->p:Landroid/widget/Button;

    invoke-static {v0}, Lcoh;->a(Landroid/widget/Button;)V

    goto/16 :goto_7

    :cond_c
    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcoh;->q:Landroid/widget/Button;

    invoke-static {v0}, Lcoh;->a(Landroid/widget/Button;)V

    goto/16 :goto_7

    :cond_d
    move v1, v2

    goto/16 :goto_8

    :cond_e
    move v3, v2

    .line 144
    goto/16 :goto_9

    :cond_f
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_title_template:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcoh;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcoh;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcoh;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 156
    :cond_10
    sget v0, Lcom/wandoujia/account/R$id;->base_alert_dialog_customPanel:I

    invoke-virtual {p0, v0}, Lcoh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcoh;->l:Landroid/widget/FrameLayout;

    .line 161
    iget-object v0, p0, Lcoh;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_b

    :cond_11
    move v0, v2

    goto/16 :goto_5
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 239
    if-eqz p3, :cond_0

    .line 240
    iget-object v0, p0, Lcoh;->A:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 243
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :pswitch_0
    iput-object p2, p0, Lcoh;->x:Ljava/lang/CharSequence;

    .line 247
    iput-object p4, p0, Lcoh;->r:Landroid/os/Message;

    .line 248
    iput-boolean v1, p0, Lcoh;->u:Z

    .line 261
    :goto_0
    return-void

    .line 252
    :pswitch_1
    iput-object p2, p0, Lcoh;->y:Ljava/lang/CharSequence;

    .line 253
    iput-object p4, p0, Lcoh;->s:Landroid/os/Message;

    .line 254
    iput-boolean v1, p0, Lcoh;->v:Z

    goto :goto_0

    .line 258
    :pswitch_2
    iput-object p2, p0, Lcoh;->z:Ljava/lang/CharSequence;

    .line 259
    iput-object p4, p0, Lcoh;->t:Landroid/os/Message;

    .line 260
    iput-boolean v1, p0, Lcoh;->w:Z

    goto :goto_0

    .line 243
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
    .line 205
    if-eqz p1, :cond_0

    .line 206
    iput-object p1, p0, Lcoh;->B:Ljava/lang/CharSequence;

    .line 208
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 0

    .prologue
    .line 363
    invoke-virtual {p0}, Lcoh;->a()V

    .line 364
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 365
    return-void
.end method
