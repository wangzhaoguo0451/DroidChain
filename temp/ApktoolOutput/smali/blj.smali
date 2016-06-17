.class public abstract Lblj;
.super Lbln;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lblj",
        "<TM;>;>",
        "Lbln;"
    }
.end annotation


# instance fields
.field protected m:Lblk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbln;-><init>()V

    return-void
.end method

.method private c()Lblj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    invoke-super {p0}, Lbln;->b()Lbln;

    move-result-object v0

    check-cast v0, Lblj;

    invoke-static {p0, v0}, Lblm;->a(Lblj;Lblj;)V

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget-object v0, p0, Lblj;->m:Lblk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblj;->m:Lblk;

    invoke-virtual {v0}, Lblk;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lblj;->m:Lblk;

    invoke-virtual {v0}, Lblk;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method protected final a(Lblj;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    iget-object v0, p0, Lblj;->m:Lblk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblj;->m:Lblk;

    invoke-virtual {v0}, Lblk;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, Lblj;->m:Lblk;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lblj;->m:Lblk;

    invoke-virtual {v0}, Lblk;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lblj;->m:Lblk;

    iget-object v1, p1, Lblj;->m:Lblk;

    invoke-virtual {v0, v1}, Lblk;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic b()Lbln;
    .locals 1

    invoke-direct {p0}, Lblj;->c()Lblj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lblj;->c()Lblj;

    move-result-object v0

    return-object v0
.end method
