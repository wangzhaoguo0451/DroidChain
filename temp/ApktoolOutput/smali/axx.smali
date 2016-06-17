.class public Laxx;
.super Lbkq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkq",
        "<",
        "Laxx;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Laws;

.field public d:Z


# direct methods
.method public constructor <init>(Laws;)V
    .locals 2

    invoke-virtual {p1}, Laws;->b()Lbkr;

    move-result-object v0

    iget-object v1, p1, Laws;->c:Lbkj;

    invoke-direct {p0, v0, v1}, Lbkq;-><init>(Lbkr;Lbkj;)V

    iput-object p1, p0, Laxx;->c:Laws;

    return-void
.end method


# virtual methods
.method protected final a(Lbko;)V
    .locals 3

    const-class v0, Lbjx;

    invoke-virtual {p1, v0}, Lbko;->b(Ljava/lang/Class;)Lbkp;

    move-result-object v0

    check-cast v0, Lbjx;

    iget-object v1, v0, Lbjx;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laxx;->c:Laws;

    invoke-virtual {v1}, Laws;->g()Laxj;

    move-result-object v1

    invoke-virtual {v1}, Laxj;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbjx;->b:Ljava/lang/String;

    :cond_0
    iget-boolean v1, p0, Laxx;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lbjx;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Laxx;->c:Laws;

    invoke-virtual {v1}, Laws;->f()Lavw;

    move-result-object v1

    invoke-virtual {v1}, Lavw;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbjx;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lavw;->b()Z

    move-result v1

    iput-boolean v1, v0, Lbjx;->e:Z

    :cond_1
    return-void
.end method
