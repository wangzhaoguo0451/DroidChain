.class final Lerp;
.super Ljava/lang/Object;
.source "HeaderFooterAdapter.java"

# interfaces
.implements Lerr;


# instance fields
.field private synthetic a:Lern;


# direct methods
.method constructor <init>(Lern;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lerp;->a:Lern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lerp;->a:Lern;

    iget-object v0, v0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lerp;->a:Lern;

    invoke-virtual {v1}, Lern;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
