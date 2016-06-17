.class public final Lejq;
.super Landroid/app/Dialog;
.source "PhoenixAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# static fields
.field private static final e:I


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:Ljava/lang/CharSequence;

.field private E:Landroid/view/View$OnClickListener;

.field a:Landroid/view/View;

.field b:Ljava/lang/String;

.field c:Landroid/os/Handler;

.field d:Ljava/lang/CharSequence;

.field private f:Landroid/content/Context;

.field private g:Landroid/view/Window;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/wandoujia/image/view/AsyncImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/ScrollView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/FrameLayout;

.field private p:Landroid/widget/FrameLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/Button;

.field private u:Landroid/os/Message;

.field private v:Landroid/os/Message;

.field private w:Landroid/os/Message;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/wandoujia/launcher_base/R$style;->PhoenixAlertDialog:I

    sput v0, Lejq;->e:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 112
    sget v0, Lejq;->e:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 62
    iput-boolean v1, p0, Lejq;->x:Z

    .line 63
    iput-boolean v1, p0, Lejq;->y:Z

    .line 64
    iput-boolean v1, p0, Lejq;->z:Z

    .line 76
    new-instance v0, Lejr;

    invoke-direct {v0, p0}, Lejr;-><init>(Lejq;)V

    iput-object v0, p0, Lejq;->E:Landroid/view/View$OnClickListener;

    .line 113
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 114
    instance-of v0, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 116
    check-cast v0, Landroid/view/ContextThemeWrapper;

    .line 117
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lejq;->f:Landroid/content/Context;

    .line 125
    :goto_0
    sget v0, Lcom/wandoujia/launcher_base/R$layout;->aa_phoenix_alert_dialog:I

    invoke-virtual {p0, v0}, Lejq;->setContentView(I)V

    .line 126
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_parentPanel:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    .line 127
    new-instance v0, Lejx;

    invoke-direct {v0, p0}, Lejx;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lejq;->c:Landroid/os/Handler;

    .line 128
    invoke-virtual {p0}, Lejq;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lejq;->g:Landroid/view/Window;

    .line 129
    return-void

    .line 120
    :cond_0
    iput-object p1, p0, Lejq;->f:Landroid/content/Context;

    goto :goto_0

    .line 123
    :cond_1
    iput-object p1, p0, Lejq;->f:Landroid/content/Context;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Landroid/view/Display;
    .locals 1
    .parameter

    .prologue
    .line 132
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lejq;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lejq;->r:Landroid/widget/Button;

    return-object v0
.end method

.method private static a(Landroid/widget/Button;)V
    .locals 2
    .parameter

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 412
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 413
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    return-void
.end method

.method static synthetic b(Lejq;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lejq;->u:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic c(Lejq;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lejq;->s:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lejq;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lejq;->v:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic e(Lejq;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lejq;->t:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lejq;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lejq;->w:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Lejq;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lejq;->E:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 150
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_contentPanel:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lejq;->l:Landroid/widget/LinearLayout;

    .line 151
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 152
    iget-object v0, p0, Lejq;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 156
    iget-object v0, p0, Lejq;->f:Landroid/content/Context;

    invoke-static {v0}, Lejq;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-static {v0}, Lejq;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_5

    invoke-static {v0}, Lejq;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    div-int/lit8 v0, v0, 0x64

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 166
    iget-object v0, p0, Lejq;->g:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 168
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_scrollView:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lejq;->m:Landroid/widget/ScrollView;

    iget-object v0, p0, Lejq;->m:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_message:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lejq;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lejq;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lejq;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lejq;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lejq;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    :goto_1
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_positiveButton:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lejq;->r:Landroid/widget/Button;

    iget-object v0, p0, Lejq;->r:Landroid/widget/Button;

    new-instance v1, Lejs;

    invoke-direct {v1, p0}, Lejs;-><init>(Lejq;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lejq;->A:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lejq;->r:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    :goto_2
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_negativeButton:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lejq;->s:Landroid/widget/Button;

    iget-object v0, p0, Lejq;->s:Landroid/widget/Button;

    new-instance v4, Lejt;

    invoke-direct {v4, p0}, Lejt;-><init>(Lejq;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lejq;->B:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lejq;->s:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_neutraButton:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lejq;->t:Landroid/widget/Button;

    iget-object v0, p0, Lejq;->t:Landroid/widget/Button;

    new-instance v4, Leju;

    invoke-direct {v4, p0}, Leju;-><init>(Lejq;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lejq;->C:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lejq;->t:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    iget-boolean v0, p0, Lejq;->x:Z

    if-eqz v0, :cond_12

    move v0, v3

    :goto_5
    iget-boolean v4, p0, Lejq;->y:Z

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-boolean v4, p0, Lejq;->z:Z

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ne v0, v3, :cond_a

    move v0, v3

    :goto_6
    if-eqz v0, :cond_3

    if-ne v1, v3, :cond_b

    iget-object v0, p0, Lejq;->r:Landroid/widget/Button;

    invoke-static {v0}, Lejq;->a(Landroid/widget/Button;)V

    :cond_3
    :goto_7
    if-eqz v1, :cond_d

    move v1, v3

    .line 170
    :goto_8
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_topPanel:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lejq;->h:Landroid/widget/LinearLayout;

    .line 171
    iget-object v4, p0, Lejq;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lejq;->D:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_9
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_icon:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lejq;->j:Lcom/wandoujia/image/view/AsyncImageView;

    if-eqz v3, :cond_10

    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_alertTitle:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lejq;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lejq;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lejq;->D:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lejq;->b:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lejq;->j:Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v2, p0, Lejq;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/image/view/AsyncImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lejq;->j:Lcom/wandoujia/image/view/AsyncImageView;

    sget v2, Lcom/wandoujia/launcher_base/R$color;->bg_list_content:I

    invoke-virtual {v0, v2}, Lcom/wandoujia/image/view/AsyncImageView;->setBackgroundResource(I)V

    .line 172
    :goto_a
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_buttonPanel:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lejq;->q:Landroid/widget/LinearLayout;

    .line 173
    if-nez v1, :cond_4

    .line 174
    iget-object v0, p0, Lejq;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    :cond_4
    iget-object v0, p0, Lejq;->a:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 177
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_customPanel:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lejq;->o:Landroid/widget/FrameLayout;

    .line 178
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_custom:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lejq;->p:Landroid/widget/FrameLayout;

    .line 179
    iget-object v0, p0, Lejq;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 180
    iget-object v0, p0, Lejq;->p:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lejq;->a:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    :goto_b
    return-void

    .line 156
    :cond_5
    invoke-static {v0}, Lejq;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    div-int/lit8 v0, v0, 0x64

    goto/16 :goto_0

    .line 168
    :cond_6
    iget-object v0, p0, Lejq;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 169
    :cond_7
    iget-object v0, p0, Lejq;->r:Landroid/widget/Button;

    iget-object v1, p0, Lejq;->A:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lejq;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lejq;->s:Landroid/widget/Button;

    iget-object v4, p0, Lejq;->B:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lejq;->s:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x2

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lejq;->t:Landroid/widget/Button;

    iget-object v4, p0, Lejq;->C:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lejq;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v1, v1, 0x4

    goto/16 :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_6

    :cond_b
    const/4 v0, 0x2

    if-ne v1, v0, :cond_c

    iget-object v0, p0, Lejq;->s:Landroid/widget/Button;

    invoke-static {v0}, Lejq;->a(Landroid/widget/Button;)V

    goto/16 :goto_7

    :cond_c
    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lejq;->t:Landroid/widget/Button;

    invoke-static {v0}, Lejq;->a(Landroid/widget/Button;)V

    goto/16 :goto_7

    :cond_d
    move v1, v2

    goto/16 :goto_8

    :cond_e
    move v3, v2

    .line 171
    goto/16 :goto_9

    :cond_f
    iget-object v0, p0, Lejq;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lejq;->j:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v2}, Lcom/wandoujia/image/view/AsyncImageView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lejq;->j:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v3}, Lcom/wandoujia/image/view/AsyncImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lejq;->j:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v4}, Lcom/wandoujia/image/view/AsyncImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lejq;->j:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v5}, Lcom/wandoujia/image/view/AsyncImageView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lejq;->j:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v6}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_10
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_title_template:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lejq;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lejq;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lejq;->j:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v6}, Lcom/wandoujia/image/view/AsyncImageView;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 183
    :cond_11
    sget v0, Lcom/wandoujia/launcher_base/R$id;->phoenix_alert_dialog_customPanel:I

    invoke-virtual {p0, v0}, Lejq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lejq;->o:Landroid/widget/FrameLayout;

    .line 188
    iget-object v0, p0, Lejq;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_b

    :cond_12
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

    .line 276
    if-eqz p3, :cond_0

    .line 277
    iget-object v0, p0, Lejq;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 280
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :pswitch_0
    iput-object p2, p0, Lejq;->A:Ljava/lang/CharSequence;

    .line 284
    iput-object p4, p0, Lejq;->u:Landroid/os/Message;

    .line 285
    iput-boolean v1, p0, Lejq;->x:Z

    .line 298
    :goto_0
    return-void

    .line 289
    :pswitch_1
    iput-object p2, p0, Lejq;->B:Ljava/lang/CharSequence;

    .line 290
    iput-object p4, p0, Lejq;->v:Landroid/os/Message;

    .line 291
    iput-boolean v1, p0, Lejq;->y:Z

    goto :goto_0

    .line 295
    :pswitch_2
    iput-object p2, p0, Lejq;->C:Ljava/lang/CharSequence;

    .line 296
    iput-object p4, p0, Lejq;->w:Landroid/os/Message;

    .line 297
    iput-boolean v1, p0, Lejq;->z:Z

    goto :goto_0

    .line 280
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
    .line 236
    if-eqz p1, :cond_0

    .line 237
    iput-object p1, p0, Lejq;->D:Ljava/lang/CharSequence;

    .line 239
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 0

    .prologue
    .line 433
    invoke-virtual {p0}, Lejq;->a()V

    .line 434
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 435
    return-void
.end method
