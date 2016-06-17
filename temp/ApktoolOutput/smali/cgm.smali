.class final Lcgm;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcgm;->a:Ljava/lang/String;

    iput-object p2, p0, Lcgm;->b:Ljava/lang/String;

    iput-object p3, p0, Lcgm;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcgm;->a:Ljava/lang/String;

    invoke-static {}, Lcom/unipay/log/LogSocket;->a()Lcom/unipay/log/LogSocket;

    iget-object v1, p0, Lcgm;->b:Ljava/lang/String;

    iget-object v2, p0, Lcgm;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/unipay/log/LogSocket;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/unipay/log/LogSocket;->a()Lcom/unipay/log/LogSocket;

    iget-object v1, p0, Lcgm;->b:Ljava/lang/String;

    iget-object v2, p0, Lcgm;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/unipay/log/LogSocket;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/unipay/log/LogSocket;->a()Lcom/unipay/log/LogSocket;

    iget-object v1, p0, Lcgm;->b:Ljava/lang/String;

    iget-object v2, p0, Lcgm;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/unipay/log/LogSocket;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcgm;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcgk;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
