.class public final Lcgq;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcgr;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcgo;

.field private synthetic e:Lcgn;


# direct methods
.method public constructor <init>(Lcgn;Ljava/lang/String;Lcgr;Ljava/lang/String;Lcgo;)V
    .locals 0

    iput-object p1, p0, Lcgq;->e:Lcgn;

    iput-object p2, p0, Lcgq;->a:Ljava/lang/String;

    iput-object p3, p0, Lcgq;->b:Lcgr;

    iput-object p4, p0, Lcgq;->c:Ljava/lang/String;

    iput-object p5, p0, Lcgq;->d:Lcgo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcgq;->e:Lcgn;

    iget-object v0, v0, Lcgn;->a:Lcgp;

    iget-object v1, p0, Lcgq;->a:Ljava/lang/String;

    iget-object v2, p0, Lcgq;->b:Lcgr;

    iget-object v3, p0, Lcgq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcgp;->b(Ljava/lang/String;Lcgr;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcgq;->d:Lcgo;

    invoke-interface {v1, v0}, Lcgo;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcgq;->d:Lcgo;

    invoke-interface {v0}, Lcgo;->a()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcgq;->d:Lcgo;

    invoke-interface {v0}, Lcgo;->a()V

    goto :goto_0
.end method
