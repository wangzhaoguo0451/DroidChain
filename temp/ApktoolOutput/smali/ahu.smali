.class public abstract Lahu;
.super Lcom/android/volley/Request;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field private final m:Lagu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lagu",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "utf-8"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lahu;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lagu;Lagt;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lagu",
            "<TT;>;",
            "Lagt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lagt;)V

    .line 59
    iput-object p2, p0, Lahu;->m:Lagu;

    .line 60
    return-void
.end method


# virtual methods
.method protected abstract a(Lagp;)Lags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagp;",
            ")",
            "Lags",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lahu;->m:Lagu;

    invoke-interface {v0, p1}, Lagu;->onResponse(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lahu;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final e()[B
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lahu;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final h()[B
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method
