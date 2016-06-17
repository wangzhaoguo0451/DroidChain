.class final Lcgi;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcgi;->a:Ljava/lang/String;

    iput-object p2, p0, Lcgi;->b:Ljava/lang/String;

    iput-object p3, p0, Lcgi;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/unipay/log/LogSocket;->a()Lcom/unipay/log/LogSocket;

    iget-object v0, p0, Lcgi;->a:Ljava/lang/String;

    iget-object v1, p0, Lcgi;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unipay/log/LogSocket;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcgi;->c:Ljava/lang/String;

    invoke-static {v0}, Lcgk;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
