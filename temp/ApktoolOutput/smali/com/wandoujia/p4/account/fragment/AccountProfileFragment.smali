.class public Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;
.super Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;
.source "AccountProfileFragment.java"


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/content/IntentFilter;

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Z

.field private q:Lcoh;

.field private r:Z

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/TextView;

.field private final v:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->p:Z

    .line 81
    iput-boolean v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->r:Z

    .line 113
    new-instance v0, Letl;

    invoke-direct {v0, p0}, Letl;-><init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->v:Landroid/view/View$OnClickListener;

    .line 540
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->r:Z

    iget-boolean v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->p:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->p:Z

    new-instance v0, Lets;

    invoke-direct {v0, p0, p1, p2}, Lets;-><init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lets;->start()V

    const v0, 0x7f0e001c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, ""

    new-instance v4, Lett;

    invoke-direct {v4, p0, p1, v1}, Lett;-><init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Letv;

    invoke-direct {v5, p0}, Letv;-><init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcoh;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->q:Lcoh;

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->q:Lcoh;

    invoke-virtual {v0}, Lcoh;->show()V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const v4, 0x7f0e05b5

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 331
    invoke-static {}, Lchv;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lchv;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->c:Landroid/widget/TextView;

    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-static {}, Lchv;->r()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 335
    invoke-static {}, Lchv;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 336
    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->g:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->s:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :goto_0
    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :goto_1
    invoke-static {}, Lchv;->q()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 352
    invoke-static {}, Lchv;->n()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 353
    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->h:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 354
    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->t:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    :goto_2
    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :goto_3
    invoke-static {}, Ld;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lchv;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    :goto_4
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->c:Landroid/widget/TextView;

    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    return-void

    .line 339
    :cond_3
    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->g:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 356
    :cond_5
    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->h:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 362
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 370
    :cond_7
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private c()V
    .locals 4

    .prologue
    .line 429
    invoke-static {}, Lchv;->k()Ljava/lang/String;

    move-result-object v0

    .line 430
    new-instance v1, Lhma;

    invoke-direct {v1}, Lhma;-><init>()V

    .line 431
    iget-object v2, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f020009

    invoke-virtual {v1, v2, v0, v3}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 432
    return-void
.end method

.method public static synthetic c(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "phoenix.intent.extra_ACCOUNT_BIND_TYPE"

    const-string v2, "tel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic d(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/account/activity/AccountChangeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "phoenix.intent.extra_ACCOUNT_BIND_TYPE"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic e(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 58
    invoke-static {}, Lchv;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0e0423

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e0424

    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Letm;

    invoke-direct {v3}, Letm;-><init>()V

    invoke-static {v1, v0, v2, v3}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    return-void

    :cond_0
    const v0, 0x7f0e0422

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/account/activity/AccountChangePasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic g(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->p:Z

    return v0
.end method

.method public static synthetic i(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Lcoh;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->q:Lcoh;

    return-object v0
.end method

.method static synthetic j(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->c:Landroid/widget/TextView;

    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    return-void
.end method

.method final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->r:Z

    if-nez v0, :cond_0

    .line 516
    const v0, 0x7f0e00c9

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    const v0, 0x7f0e001b

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a(Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 501
    const-string v0, "CHANGE_PASSWORD_TAG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v0, v0, Letz;->a:Lcmm;

    invoke-static {v0}, Ld;->a(Lcmm;)V

    .line 503
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 504
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 511
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->q:Lcoh;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->q:Lcoh;

    invoke-virtual {v0}, Lcoh;->dismiss()V

    .line 509
    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->b()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    const/16 v0, 0x193

    if-ne p2, v0, :cond_1

    .line 395
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v0, v0, Letz;->a:Lcmm;

    invoke-static {v0}, Ld;->a(Lcmm;)V

    .line 396
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 397
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 399
    invoke-direct {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->c()V

    .line 400
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a()V

    .line 401
    invoke-direct {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->b()V

    goto :goto_0

    .line 402
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 403
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->b:Letk;

    invoke-virtual {v0, v1}, Letz;->a(Lcmg;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const v0, 0x7f030005

    invoke-static {p2, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 222
    :cond_0
    invoke-super {p0}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->onDestroy()V

    .line 223
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->onPause()V

    .line 210
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 215
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->onResume()V

    .line 201
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 203
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->j:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->i:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    invoke-direct {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->b()V

    .line 205
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f0e0039

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {}, Lchv;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/account/activity/AccountModifyProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "account.intent.action.MODIFY_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->i:Landroid/content/IntentFilter;

    .line 107
    new-instance v0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment$ModifySuccessReceiver;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment$ModifySuccessReceiver;-><init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->j:Landroid/content/BroadcastReceiver;

    .line 109
    const v0, 0x7f0c00df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->c:Landroid/widget/TextView;

    const v0, 0x7f0c00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->d:Landroid/widget/TextView;

    const v0, 0x7f0c00e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->e:Landroid/widget/TextView;

    const v0, 0x7f0c00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0c00e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->u:Landroid/widget/TextView;

    const v0, 0x7f0c00ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->g:Landroid/widget/Button;

    const v0, 0x7f0c00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->h:Landroid/widget/Button;

    const v0, 0x7f0c00eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->m:Landroid/view/View;

    const v0, 0x7f0c00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->n:Landroid/view/View;

    const v0, 0x7f0c00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->o:Landroid/view/View;

    const v0, 0x7f0c00f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->l:Landroid/widget/TextView;

    const v0, 0x7f0c00d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->k:Landroid/widget/ImageView;

    const v0, 0x7f0c00e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->t:Landroid/view/View;

    const v0, 0x7f0c00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->s:Landroid/view/View;

    const v0, 0x7f0c00e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Letn;

    invoke-direct {v1, p0}, Letn;-><init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c00e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leto;

    invoke-direct {v1, p0}, Leto;-><init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c00e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Letp;

    invoke-direct {v1, p0}, Letp;-><init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c00e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Letq;

    invoke-direct {v1, p0}, Letq;-><init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c00dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    invoke-virtual {v0}, Letz;->b()V

    invoke-direct {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->b()V

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://innerpay.wandoujia.com/pay/account/query?wdj_auth="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Letr;

    invoke-direct {v2, p0}, Letr;-><init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Lfvu;->executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;)Ljava/util/concurrent/Future;

    .line 110
    invoke-direct {p0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->c()V

    .line 111
    return-void
.end method
