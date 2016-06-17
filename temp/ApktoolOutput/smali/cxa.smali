.class final Lcxa;
.super Lcwh;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcwh",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<TT;>;"
        }
    .end annotation
.end field

.field private synthetic b:Z

.field private synthetic c:Z

.field private synthetic d:Lcvo;

.field private synthetic e:Lczv;

.field private synthetic f:Lcwz;


# direct methods
.method constructor <init>(Lcwz;ZZLcvo;Lczv;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcxa;->f:Lcwz;

    iput-boolean p2, p0, Lcxa;->b:Z

    iput-boolean p3, p0, Lcxa;->c:Z

    iput-object p4, p0, Lcxa;->d:Lcvo;

    iput-object p5, p0, Lcxa;->e:Lczv;

    invoke-direct {p0}, Lcwh;-><init>()V

    return-void
.end method

.method private a()Lcwh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcwh",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcxa;->a:Lcwh;

    .line 142
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcxa;->d:Lcvo;

    iget-object v1, p0, Lcxa;->f:Lcwz;

    iget-object v2, p0, Lcxa;->e:Lczv;

    invoke-virtual {v0, v1, v2}, Lcvo;->a(Lcwi;Lczv;)Lcwh;

    move-result-object v0

    iput-object v0, p0, Lcxa;->a:Lcwh;

    goto :goto_0
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
    .line 125
    iget-boolean v0, p0, Lcxa;->b:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lczw;->o()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcxa;->a()Lcwh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcwh;->a(Lczw;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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
    .line 133
    iget-boolean v0, p0, Lcxa;->c:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lczy;->e()Lczy;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcxa;->a()Lcwh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcwh;->a(Lczy;Ljava/lang/Object;)V

    goto :goto_0
.end method
