.class public abstract Lcom/wandoujia/account/fragment/AccountBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "AccountBaseFragment.java"


# static fields
.field private static q:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcmm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Landroid/view/View;

.field public b:Landroid/os/Bundle;

.field public c:Lcom/wandoujia/account/AccountParams;

.field public d:Ljava/lang/String;

.field public e:Landroid/app/ProgressDialog;

.field public f:Lcmm;

.field public g:Lcom/wandoujia/account/dto/Platform;

.field public final h:Lcjs;

.field public i:Lcjr;

.field protected j:Lcjm;

.field protected k:Lcjp;

.field protected l:Lcjq;

.field public m:Lcjo;

.field protected n:Lcjl;

.field public o:Lcjn;

.field protected p:Lcji;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->q:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 51
    new-instance v0, Lcjs;

    invoke-direct {v0, p0}, Lcjs;-><init>(Lcom/wandoujia/account/fragment/AccountBaseFragment;)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->h:Lcjs;

    .line 514
    return-void
.end method

.method public static a(Lcmm;)V
    .locals 3
    .parameter

    .prologue
    .line 472
    if-nez p0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "wdjAccount Manager must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    sget-object v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->q:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcmm;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcmm;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcmm;
    .locals 1
    .parameter

    .prologue
    .line 492
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 495
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmm;

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_sdk_title_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->r:Landroid/view/View;

    .line 297
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_sdk_fragment_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->s:Landroid/widget/TextView;

    .line 298
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->n:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->r:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 430
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->o:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, v0, Lcom/wandoujia/account/AccountParams;->o:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->p:Lcji;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->p:Lcji;

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    invoke-interface {v0, v1, p1, v2}, Lcji;->a(Landroid/content/Context;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;Lcom/wandoujia/account/AccountParams;)V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/wandoujia/account/fragment/AccountBaseFragment;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/wandoujia/account/fragment/AccountBaseFragment;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 446
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget v0, v0, Lcom/wandoujia/account/AccountParams;->c:I

    if-eq v0, v3, :cond_5

    .line 447
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 448
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 455
    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 457
    :cond_3
    return-void

    .line 450
    :cond_4
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    goto :goto_1

    .line 453
    :cond_5
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract a(Lcom/wandoujia/account/dto/WandouResponse;)V
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->j:Lcjm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->n:Z

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->j:Lcjm;

    invoke-interface {v0, p1}, Lcjm;->a(Ljava/lang/String;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b()Ls;
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    .line 422
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract b(Lcom/wandoujia/account/dto/WandouResponse;)V
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 201
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract c()V
.end method

.method public abstract d(Ljava/lang/String;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 214
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_a

    const-string v1, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->d:Ljava/lang/String;

    const-string v1, "account.intent.extra.ACCOUNT_PARAMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/AccountParams;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 218
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c(Ljava/lang/String;)Lcmm;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    .line 221
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    if-nez v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "wdj.account"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "manager_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->d:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c(Ljava/lang/String;)Lcmm;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcjr;

    if-eqz v0, :cond_b

    .line 232
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcjr;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->i:Lcjr;

    .line 237
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcjm;

    if-eqz v0, :cond_c

    .line 238
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcjm;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->j:Lcjm;

    .line 243
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcjp;

    if-eqz v0, :cond_d

    .line 244
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcjp;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->k:Lcjp;

    .line 249
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcjq;

    if-eqz v0, :cond_e

    .line 250
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcjq;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->l:Lcjq;

    .line 255
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcjo;

    if-eqz v0, :cond_f

    .line 256
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcjo;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->m:Lcjo;

    .line 261
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcjl;

    if-eqz v0, :cond_10

    .line 262
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcjl;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->n:Lcjl;

    .line 267
    :cond_7
    :goto_6
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcjn;

    if-eqz v0, :cond_11

    .line 268
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcjn;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->o:Lcjn;

    .line 273
    :cond_8
    :goto_7
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcji;

    if-eqz v0, :cond_12

    .line 274
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcji;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->p:Lcji;

    .line 278
    :cond_9
    :goto_8
    return-void

    .line 216
    :cond_a
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c:Lcom/wandoujia/account/AccountParams;

    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    goto/16 :goto_0

    .line 233
    :cond_b
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    if-eqz v0, :cond_2

    .line 234
    iput-object v3, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->i:Lcjr;

    goto/16 :goto_1

    .line 239
    :cond_c
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    if-eqz v0, :cond_3

    .line 240
    iput-object v3, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->j:Lcjm;

    goto :goto_2

    .line 245
    :cond_d
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    if-eqz v0, :cond_4

    .line 246
    iput-object v3, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->k:Lcjp;

    goto :goto_3

    .line 251
    :cond_e
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    if-eqz v0, :cond_5

    .line 252
    iput-object v3, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->l:Lcjq;

    goto :goto_4

    .line 257
    :cond_f
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    if-eqz v0, :cond_6

    .line 258
    iput-object v3, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->m:Lcjo;

    goto :goto_5

    .line 263
    :cond_10
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    if-eqz v0, :cond_7

    .line 264
    iput-object v3, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->n:Lcjl;

    goto :goto_6

    .line 269
    :cond_11
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    if-eqz v0, :cond_8

    .line 270
    iput-object v3, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->o:Lcjn;

    goto :goto_7

    .line 275
    :cond_12
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->f:Lcmm;

    if-eqz v0, :cond_9

    .line 276
    iput-object v3, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->p:Lcji;

    goto :goto_8
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "wdj.account"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "manager_key"

    iget-object v2, p0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 290
    return-void
.end method
