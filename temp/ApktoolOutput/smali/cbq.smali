.class public final Lcbq;
.super Lcbl;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcbl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcbl;->a(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_sendauth_req_scope"

    iget-object v1, p0, Lcbq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_sendauth_req_state"

    iget-object v1, p0, Lcbq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcbl;->b(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_sendauth_req_scope"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcbq;->b:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_req_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcbq;->c:Ljava/lang/String;

    return-void
.end method

.method final b()Z
    .locals 3

    const/16 v2, 0x400

    const/4 v0, 0x0

    iget-object v1, p0, Lcbq;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcbq;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcbq;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    :cond_0
    const-string v1, "MicroMsg.SDK.SendAuth.Req"

    invoke-static {v1}, Lcby;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcbq;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcbq;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    const-string v1, "MicroMsg.SDK.SendAuth.Req"

    invoke-static {v1}, Lcby;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
