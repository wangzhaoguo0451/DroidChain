.class final Lerq;
.super Luj;
.source "HeaderFooterAdapter.java"


# instance fields
.field private a:Lerr;

.field private synthetic b:Lern;


# direct methods
.method public constructor <init>(Lern;Lerr;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lerq;->b:Lern;

    invoke-direct {p0}, Luj;-><init>()V

    .line 43
    iput-object p2, p0, Lerq;->a:Lerr;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lerq;->b:Lern;

    iget-object v0, v0, Luh;->a:Lui;

    invoke-virtual {v0}, Lui;->a()V

    .line 49
    return-void
.end method

.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lerq;->b:Lern;

    iget-object v1, p0, Lerq;->a:Lerr;

    invoke-interface {v1, p1}, Lerr;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lern;->a(II)V

    .line 54
    return-void
.end method

.method public final b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lerq;->b:Lern;

    iget-object v1, p0, Lerq;->a:Lerr;

    invoke-interface {v1, p1}, Lerr;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lern;->b(II)V

    .line 59
    return-void
.end method

.method public final c(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lerq;->b:Lern;

    iget-object v1, p0, Lerq;->a:Lerr;

    invoke-interface {v1, p1}, Lerr;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lern;->c(II)V

    .line 64
    return-void
.end method
