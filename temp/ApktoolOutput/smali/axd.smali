.class public final Laxd;
.super Lawq;


# instance fields
.field private final a:Lbky;


# direct methods
.method constructor <init>(Laws;)V
    .locals 1

    invoke-direct {p0, p1}, Lawq;-><init>(Laws;)V

    new-instance v0, Lbky;

    invoke-direct {v0}, Lbky;-><init>()V

    iput-object v0, p0, Laxd;->a:Lbky;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    iget-object v0, p0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->b()Lbkr;

    move-result-object v0

    invoke-virtual {v0}, Lbkr;->a()Lbky;

    move-result-object v0

    iget-object v1, p0, Laxd;->a:Lbky;

    invoke-virtual {v0, v1}, Lbky;->a(Lbky;)V

    iget-object v0, p0, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->e()Lawj;

    move-result-object v0

    invoke-virtual {v0}, Lawj;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Laxd;->a:Lbky;

    iput-object v1, v2, Lbky;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Lawj;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Laxd;->a:Lbky;

    iput-object v0, v1, Lbky;->b:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final b()Lbky;
    .locals 1

    invoke-virtual {p0}, Laxd;->m()V

    iget-object v0, p0, Laxd;->a:Lbky;

    return-object v0
.end method
