.class final Lezm;
.super Ljava/lang/Object;
.source "CleanCell.java"

# interfaces
.implements Lcrq;


# instance fields
.field private synthetic a:Lezf;


# direct methods
.method constructor <init>(Lezf;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lezm;->a:Lezf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lezm;->a:Lezf;

    iget-object v0, v0, Lezf;->c:Leyl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leyl;->a(I)V

    .line 198
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lezm;->a:Lezf;

    iget-object v0, v0, Lezf;->c:Leyl;

    invoke-virtual {v0, p1}, Leyl;->a(I)V

    .line 203
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lezm;->a:Lezf;

    iget-object v0, v0, Lezf;->c:Leyl;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Leyl;->a(I)V

    .line 208
    return-void
.end method
