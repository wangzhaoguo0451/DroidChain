.class final Letf;
.super Ljava/lang/Object;
.source "AccountAuthenticator.java"

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
.field private synthetic a:Landroid/os/Bundle;

.field private synthetic b:Landroid/accounts/AccountManager;

.field private synthetic c:Lete;


# direct methods
.method constructor <init>(Lete;Landroid/os/Bundle;Landroid/accounts/AccountManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Letf;->c:Lete;

    iput-object p2, p0, Letf;->a:Landroid/os/Bundle;

    iput-object p3, p0, Letf;->b:Landroid/accounts/AccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 168
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 173
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Letf;->c:Lete;

    invoke-static {v0}, Lete;->a(Lete;)Lcnt;

    move-result-object v0

    invoke-virtual {v0}, Lcnt;->f()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Letf;->c:Lete;

    iget-object v1, p0, Letf;->a:Landroid/os/Bundle;

    iget-object v2, p0, Letf;->b:Landroid/accounts/AccountManager;

    invoke-static {v0, v1, v2}, Lete;->a(Lete;Landroid/os/Bundle;Landroid/accounts/AccountManager;)V

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Letf;->a:Landroid/os/Bundle;

    iget-object v1, p0, Letf;->b:Landroid/accounts/AccountManager;

    invoke-static {v0, v1}, Lete;->a(Landroid/os/Bundle;Landroid/accounts/AccountManager;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    goto :goto_0

    .line 187
    :catch_2
    move-exception v0

    goto :goto_0

    .line 185
    :catch_3
    move-exception v0

    goto :goto_0
.end method
