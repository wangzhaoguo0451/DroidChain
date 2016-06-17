.class final Lcvu;
.super Lcwh;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcwh",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0}, Lcwh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lczw;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lczw;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Lcvu;->a:Lcwh;

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 885
    :cond_0
    iget-object v0, p0, Lcvu;->a:Lcwh;

    invoke-virtual {v0, p1}, Lcwh;->a(Lczw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lczy;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lczy;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Lcvu;->a:Lcwh;

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 892
    :cond_0
    iget-object v0, p0, Lcvu;->a:Lcwh;

    invoke-virtual {v0, p1, p2}, Lcwh;->a(Lczy;Ljava/lang/Object;)V

    .line 893
    return-void
.end method
