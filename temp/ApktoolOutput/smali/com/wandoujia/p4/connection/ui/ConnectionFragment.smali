.class public Lcom/wandoujia/p4/connection/ui/ConnectionFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "ConnectionFragment.java"


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/ImageButton;

.field private F:Landroid/widget/ImageButton;

.field private G:Landroid/content/Context;

.field private H:Landroid/view/View;

.field private final I:Landroid/view/View$OnClickListener;

.field private final J:Landroid/view/View$OnClickListener;

.field private final K:Landroid/view/View$OnClickListener;

.field private a:I

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lgqr;

.field private g:Lgqr;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a:I

    .line 128
    new-instance v0, Lfow;

    invoke-direct {v0, p0}, Lfow;-><init>(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->I:Landroid/view/View$OnClickListener;

    .line 136
    new-instance v0, Lfpb;

    invoke-direct {v0, p0}, Lfpb;-><init>(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->J:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v0, Lfpc;

    invoke-direct {v0, p0}, Lfpc;-><init>(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->K:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Lgqr;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->g:Lgqr;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a(ZZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 586
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->H:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->G:Landroid/content/Context;

    const v2, 0x7f0e0243

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 592
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->l:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 593
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->G:Landroid/content/Context;

    const v2, 0x7f0e027b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    return-void
.end method

.method private a(ZZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0e0384

    const v4, 0x7f0e0382

    const v3, 0x7f0e015b

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 445
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 447
    if-eqz p1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->w:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->x:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->w:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->x:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 456
    :goto_0
    if-nez p3, :cond_1

    .line 457
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 458
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 459
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->w:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 460
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->x:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 467
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->C:Landroid/widget/Button;

    const v1, 0x7f0e0162

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 471
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->w:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->x:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 463
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 464
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->w:Landroid/widget/Button;

    const v1, 0x7f0e056d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 465
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->x:Landroid/widget/Button;

    const v1, 0x7f0e056d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->l:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->G:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic c()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "phoenix.intent.extra.USER_AGENT"

    const-string v2, "phoenix"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phoenix.intent.extra.SOURCE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lfop;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic d(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Lgqr;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->f:Lgqr;

    return-object v0
.end method

.method public static synthetic d()V
    .locals 0

    .prologue
    .line 44
    invoke-static {}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->f()V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    .prologue
    .line 44
    invoke-static {}, Lfop;->a()Lfop;

    invoke-static {}, Lfop;->c()V

    return-void
.end method

.method public static synthetic e(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    invoke-static {}, Lgyy;->c()Lgyy;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lfpa;

    invoke-direct {v0}, Lfpa;-><init>()V

    invoke-static {v0}, Lgyy;->a(Lgyy;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wandoujia/plugin/qr/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "source"

    const-string v2, "connection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic f(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a:I

    return v0
.end method

.method private static f()V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    const-string v1, "phoenix.intent.extra.USER_AGENT"

    const-string v2, "phoenix"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v1, "phoenix.intent.extra.SOURCE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lfop;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 165
    return-void
.end method

.method public static synthetic g(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->h:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lfop;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Ld;->c(Z)V

    invoke-static {}, Lfop;->a()Lfop;

    invoke-static {}, Lfop;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->w:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-static {}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->f()V

    invoke-static {v2}, Ld;->c(Z)V

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 7

    .prologue
    const v6, 0x7f0e0384

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 424
    invoke-static {}, Lfpv;->c()Lfpv;

    move-result-object v0

    invoke-virtual {v0}, Lfpv;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lfpv;->c()Lfpv;

    move-result-object v0

    invoke-virtual {v0}, Lfpv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "USB"

    const v1, 0x7f020017

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a(Ljava/lang/String;I)V

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-static {}, Lfpv;->c()Lfpv;

    move-result-object v0

    invoke-virtual {v0}, Lfpv;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lfpv;->c()Lfpv;

    move-result-object v0

    invoke-virtual {v0}, Lfpv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Wi-Fi"

    const v1, 0x7f020019

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->h:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->G:Landroid/content/Context;

    const v2, 0x7f0e017a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a:I

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->w:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->x:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->C:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->C:Landroid/widget/Button;

    const v1, 0x7f0e0245

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->H:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->G:Landroid/content/Context;

    invoke-static {v0}, Lfop;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->G:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->G:Landroid/content/Context;

    const v2, 0x7f0e056d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->h:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iput v4, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a:I

    invoke-direct {p0, v4, v4, v4}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a(ZZZ)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->G:Landroid/content/Context;

    const v2, 0x7f0e0246

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->h:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a:I

    invoke-direct {p0, v3, v3, v4}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a(ZZZ)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v4, v4, v3}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a(ZZZ)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 438
    invoke-static {}, Lfpv;->c()Lfpv;

    move-result-object v0

    invoke-virtual {v0}, Lfpv;->h()Ljava/lang/String;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 211
    iput-object p1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->G:Landroid/content/Context;

    .line 212
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 182
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0c0114

    const v5, 0x7f0c0113

    const v4, 0x7f0c0111

    const v3, 0x7f0c0110

    const/4 v2, 0x0

    .line 217
    const v0, 0x7f03000f

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->H:Landroid/view/View;

    .line 218
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->H:Landroid/view/View;

    const v1, 0x7f0c0119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->n:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->H:Landroid/view/View;

    const v1, 0x7f0c010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->H:Landroid/view/View;

    const v1, 0x7f0c0104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->H:Landroid/view/View;

    const v1, 0x7f0c0103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->G:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030050

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->d:Landroid/view/View;

    const v1, 0x7f030046

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->d:Landroid/view/View;

    const v1, 0x7f0c01b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->C:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->e:Landroid/view/View;

    const v1, 0x7f0c018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->D:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->d:Landroid/view/View;

    const v1, 0x7f0c01b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->b:Landroid/view/View;

    const v1, 0x7f0c010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->b:Landroid/view/View;

    const v1, 0x7f0c010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->b:Landroid/view/View;

    const v1, 0x7f0c010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    const v1, 0x7f0c0115

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->s:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->n:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0115

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->t:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    const v1, 0x7f0c0118

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->w:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->n:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0118

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->x:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    const v1, 0x7f0c0116

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->n:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0116

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->A:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->B:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    const v1, 0x7f0c0117

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->E:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->n:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0117

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->F:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->E:Landroid/widget/ImageButton;

    new-instance v1, Lfpd;

    invoke-direct {v1, p0}, Lfpd;-><init>(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->F:Landroid/widget/ImageButton;

    new-instance v1, Lfpe;

    invoke-direct {v1, p0}, Lfpe;-><init>(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->o:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->q:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->p:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->r:Landroid/widget/LinearLayout;

    new-instance v0, Lgqr;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->G:Landroid/content/Context;

    invoke-direct {v0, v1}, Lgqr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->f:Lgqr;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->f:Lgqr;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lgqr;->setContentView(Landroid/view/View;)V

    new-instance v0, Lgqr;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->G:Landroid/content/Context;

    invoke-direct {v0, v1}, Lgqr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->g:Lgqr;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->g:Lgqr;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Lgqr;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->p:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->r:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->q:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->C:Landroid/widget/Button;

    new-instance v1, Lfpf;

    invoke-direct {v1, p0}, Lfpf;-><init>(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->D:Landroid/widget/Button;

    new-instance v1, Lfpg;

    invoke-direct {v1, p0}, Lfpg;-><init>(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->d:Landroid/view/View;

    const v1, 0x7f0c01b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->h:Landroid/widget/Button;

    new-instance v1, Lfph;

    invoke-direct {v1, p0}, Lfph;-><init>(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->w:Landroid/widget/Button;

    new-instance v1, Lfpi;

    invoke-direct {v1, p0}, Lfpi;-><init>(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->x:Landroid/widget/Button;

    new-instance v1, Lfox;

    invoke-direct {v1, p0}, Lfox;-><init>(Lcom/wandoujia/p4/connection/ui/ConnectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->A:Landroid/widget/Button;

    new-instance v1, Lfoy;

    invoke-direct {v1}, Lfoy;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->B:Landroid/widget/Button;

    new-instance v1, Lfoz;

    invoke-direct {v1}, Lfoz;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->H:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 417
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onResume()V

    .line 418
    invoke-virtual {p0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->a()V

    .line 419
    invoke-virtual {p0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->b()V

    .line 420
    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->B:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lfop;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lfop;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->A:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->B:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 421
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 225
    const v0, 0x7f0e05b0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/connection/ui/ConnectionFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method
