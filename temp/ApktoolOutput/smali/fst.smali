.class public final Lfst;
.super Ljava/lang/Object;
.source "FetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:I

.field public final b:Lfsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfsi",
            "<TT;>;"
        }
    .end annotation
.end field

.field public c:Lfsr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfsr",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:Z

.field private final g:Lfsr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfsr",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfsi;Lfsr;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfsi",
            "<TT;>;",
            "Lfsr",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    const/16 v3, 0x28

    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lfst;-><init>(Lfsi;Lfsr;IIZ)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lfsi;Lfsr;IIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfsi",
            "<TT;>;",
            "Lfsr",
            "<TT;>;IIZ)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lfst;->b:Lfsi;

    .line 50
    iput-object p2, p0, Lfst;->c:Lfsr;

    .line 51
    iput p3, p0, Lfst;->d:I

    .line 52
    iput p4, p0, Lfst;->e:I

    .line 53
    new-instance v0, Lfsu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfsu;-><init>(Lfst;B)V

    iput-object v0, p0, Lfst;->g:Lfsr;

    .line 54
    iput-boolean p5, p0, Lfst;->f:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Lfsi;Lfsr;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfsi",
            "<TT;>;",
            "Lfsr",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 34
    const/16 v3, 0x28

    const/16 v4, 0x14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lfst;-><init>(Lfsi;Lfsr;IIZ)V

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 59
    iget v0, p0, Lfst;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lfst;->e:I

    .line 60
    :goto_0
    iget-object v1, p0, Lfst;->b:Lfsi;

    const/4 v2, 0x0

    iget-object v3, p0, Lfst;->g:Lfsr;

    iget-boolean v4, p0, Lfst;->f:Z

    invoke-virtual {v1, v2, v0, v3, v4}, Lfsi;->a(IILfsr;Z)V

    .line 61
    return-void

    .line 59
    :cond_0
    iget v0, p0, Lfst;->d:I

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 64
    iget v0, p0, Lfst;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lfst;->d:I

    .line 65
    :goto_0
    iget-object v1, p0, Lfst;->b:Lfsi;

    iget v2, p0, Lfst;->a:I

    iget-object v3, p0, Lfst;->g:Lfsr;

    invoke-virtual {v1, v2, v0, v3}, Lfsi;->a(IILfsr;)V

    .line 66
    return-void

    .line 64
    :cond_0
    iget v0, p0, Lfst;->e:I

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lfst;->a:I

    .line 75
    return-void
.end method
