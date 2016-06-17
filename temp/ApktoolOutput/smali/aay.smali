.class public final Laay;
.super Ljava/lang/Object;
.source "Loader.java"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Laay;->a:Ljava/io/InputStream;

    .line 34
    iput-boolean p2, p0, Laay;->b:Z

    .line 35
    return-void
.end method
