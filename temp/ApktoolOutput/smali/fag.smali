.class public Lfag;
.super Ljava/lang/Object;
.source "ALRemind.java"


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    if-ne p0, p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    instance-of v2, p1, Lfag;

    if-nez v2, :cond_2

    move v0, v1

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    check-cast p1, Lfag;

    .line 47
    iget-object v2, p1, Lfag;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lfag;->b:Ljava/lang/String;

    iget-object v3, p0, Lfag;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p1, Lfag;->c:I

    iget v3, p0, Lfag;->c:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 53
    iget v1, p0, Lfag;->c:I

    .line 54
    iget-object v0, p0, Lfag;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfag;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 55
    return v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
