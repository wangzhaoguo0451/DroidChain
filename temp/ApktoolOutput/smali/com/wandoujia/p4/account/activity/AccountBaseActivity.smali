.class public abstract Lcom/wandoujia/p4/account/activity/AccountBaseActivity;
.super Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;
.source "AccountBaseActivity.java"


# instance fields
.field public a:Landroid/app/ProgressDialog;

.field public b:Lesh;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;-><init>()V

    .line 20
    new-instance v0, Lesh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lesh;-><init>(Lcom/wandoujia/p4/account/activity/AccountBaseActivity;B)V

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->b:Lesh;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/wandoujia/account/dto/WandouResponse;)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 30
    :cond_0
    const-string v0, ""

    invoke-static {p0, v0, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->a:Landroid/app/ProgressDialog;

    .line 31
    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    if-eqz p2, :cond_1

    .line 76
    :try_start_0
    invoke-virtual {p2}, Lcom/wandoujia/account/dto/WandouResponse;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const v0, 0x7f0e044f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    new-instance v1, Lesf;

    invoke-direct {v1}, Lesf;-><init>()V

    invoke-static {p0, v0, p1, v1}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    .line 110
    :goto_0
    return-void

    .line 93
    :cond_1
    const v0, 0x7f0e044f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lesg;

    invoke-direct {v1}, Lesg;-><init>()V

    invoke-static {p0, v0, p1, v1}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method
