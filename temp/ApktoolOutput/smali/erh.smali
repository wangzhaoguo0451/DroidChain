.class public final Lerh;
.super Lerg;
.source "SerialPresenter.java"


# instance fields
.field private final a:[Lerg;


# direct methods
.method public varargs constructor <init>([Lerg;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lerg;-><init>()V

    .line 18
    iput-object p1, p0, Lerh;->a:[Lerg;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lerh;->a:[Lerg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lerh;->a:[Lerg;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lerh;->a:[Lerg;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lerh;->a:[Lerg;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lerg;->a()V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lerh;->a:[Lerg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lerh;->a:[Lerg;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 29
    :cond_0
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lerh;->a:[Lerg;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 27
    iget-object v1, p0, Lerh;->a:[Lerg;

    aget-object v1, v1, v0

    iget-object v2, p0, Lerg;->f:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v3, v1, Lerg;->g:Lerf;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lerg;->g:Lerf;

    iget-object v4, p0, Lerg;->g:Lerf;

    if-ne v3, v4, :cond_5

    :cond_2
    iget-object v3, v1, Lerg;->f:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lerg;->f:Landroid/view/View;

    if-ne v3, v2, :cond_5

    :cond_3
    iput-object v2, v1, Lerg;->f:Landroid/view/View;

    iget-object v2, p0, Lerg;->g:Lerf;

    iput-object v2, v1, Lerg;->g:Lerf;

    invoke-virtual {v1, p1}, Lerg;->a(Ljava/lang/Object;)V

    .line 26
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be in same group!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
