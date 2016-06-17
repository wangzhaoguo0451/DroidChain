.class public final Lags;
.super Ljava/lang/Object;
.source "Response.java"


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
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lagi;

.field public final c:Lcom/android/volley/VolleyError;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lags;->d:Z

    .line 81
    iput-object v1, p0, Lags;->a:Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Lags;->b:Lagi;

    .line 83
    iput-object p1, p0, Lags;->c:Lcom/android/volley/VolleyError;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lagi;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lagi;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lags;->d:Z

    .line 75
    iput-object p1, p0, Lags;->a:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lags;->b:Lagi;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lags;->c:Lcom/android/volley/VolleyError;

    .line 78
    return-void
.end method

.method public static a(Lcom/android/volley/VolleyError;)Lags;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/VolleyError;",
            ")",
            "Lags",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lags;

    invoke-direct {v0, p0}, Lags;-><init>(Lcom/android/volley/VolleyError;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lagi;)Lags;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lagi;",
            ")",
            "Lags",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lags;

    invoke-direct {v0, p0, p1}, Lags;-><init>(Ljava/lang/Object;Lagi;)V

    return-object v0
.end method
