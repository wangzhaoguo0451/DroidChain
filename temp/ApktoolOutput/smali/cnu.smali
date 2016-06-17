.class final Lcnu;
.super Ljava/lang/Object;
.source "SystemAccountStorage.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcnt;


# direct methods
.method public constructor <init>(Lcnt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcnu;->c:Lcnt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p3, p0, Lcnu;->b:Ljava/lang/String;

    .line 331
    iput-object p2, p0, Lcnu;->a:Ljava/lang/String;

    .line 332
    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    if-nez p1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 341
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcnu;->c:Lcnt;

    invoke-virtual {v0}, Lcnt;->f()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcnu;->c:Lcnt;

    iget-object v1, p0, Lcnu;->a:Ljava/lang/String;

    iget-object v2, p0, Lcnu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcnt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    goto :goto_0

    .line 346
    :cond_2
    iget-object v0, p0, Lcnu;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcnu;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcnu;->c:Lcnt;

    iget-object v1, p0, Lcnu;->a:Ljava/lang/String;

    iget-object v2, p0, Lcnu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcnt;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 353
    :catch_1
    move-exception v0

    goto :goto_0

    .line 357
    :catch_2
    move-exception v0

    goto :goto_0

    .line 355
    :catch_3
    move-exception v0

    goto :goto_0
.end method
