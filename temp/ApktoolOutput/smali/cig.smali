.class public final Lcig;
.super Ljava/lang/Object;
.source "AccountProcesser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcie;


# direct methods
.method public constructor <init>(Lcie;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcig;->a:Lcie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 186
    :try_start_0
    iget-object v0, p0, Lcig;->a:Lcie;

    iget-object v0, v0, Lcie;->c:Landroid/content/Context;

    sget v1, Lcom/wandoujia/account/R$string;->account_sdk_no_network:I

    invoke-static {v1}, Ld;->d(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
