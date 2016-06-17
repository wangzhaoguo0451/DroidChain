.class public abstract Lbkq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lbkq;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final e:Lbkr;

.field public f:Lbko;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbkr;Lbkj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lbkq;->e:Lbkr;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbkq;->g:Ljava/util/List;

    new-instance v0, Lbko;

    invoke-direct {v0, p0, p2}, Lbko;-><init>(Lbkq;Lbkj;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbko;->g:Z

    iput-object v0, p0, Lbkq;->f:Lbko;

    return-void
.end method


# virtual methods
.method public a(Lbko;)V
    .locals 0

    return-void
.end method
