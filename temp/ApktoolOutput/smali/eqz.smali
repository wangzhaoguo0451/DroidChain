.class public final Leqz;
.super Ljava/lang/Object;
.source "DataLoadListener.java"


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
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final f:Z


# direct methods
.method public constructor <init>(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 57
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Leqz;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;TT;",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Leqz;->a:I

    .line 62
    iput p2, p0, Leqz;->b:I

    .line 63
    iput-object p3, p0, Leqz;->c:Ljava/lang/Object;

    .line 64
    iput-object p4, p0, Leqz;->d:Ljava/lang/Object;

    .line 65
    iput-object p5, p0, Leqz;->e:Ljava/util/List;

    .line 66
    iput-boolean p6, p0, Leqz;->f:Z

    .line 67
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;TT;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 53
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v2

    invoke-direct/range {v0 .. v6}, Leqz;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;Z)V

    .line 54
    return-void
.end method
