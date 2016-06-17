.class public final Leyb;
.super Ljava/lang/Object;
.source "CleanFragment.java"

# interfaces
.implements Lcrq;


# instance fields
.field private synthetic a:Leyl;


# direct methods
.method public constructor <init>(Leyl;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Leyb;->a:Leyl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Leyb;->a:Leyl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leyl;->a(I)V

    .line 163
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Leyb;->a:Leyl;

    invoke-virtual {v0, p1}, Leyl;->a(I)V

    .line 168
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Leyb;->a:Leyl;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Leyl;->a(I)V

    .line 173
    return-void
.end method
