.class public final Laov;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheKey.java"

# interfaces
.implements Laip;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lapu;

.field private final c:Z

.field private final d:Laps;

.field private final e:Laip;

.field private f:Ljava/lang/String;

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lapu;Laps;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Laov;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Laov;->b:Lapu;

    .line 47
    iput-boolean v1, p0, Laov;->c:Z

    .line 48
    iput-object p3, p0, Laov;->d:Laps;

    .line 49
    iput-object v2, p0, Laov;->e:Laip;

    .line 50
    iput-object v2, p0, Laov;->f:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lapu;->hashCode()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Laov;->d:Laps;

    if-nez v2, :cond_1

    move v3, v1

    :goto_1
    if-nez v4, :cond_2

    move v2, v1

    :goto_2
    if-nez v5, :cond_3

    move v0, v1

    :goto_3
    if-nez v6, :cond_4

    :goto_4
    add-int/lit8 v3, v3, 0x1f

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Laov;->g:I

    .line 58
    return-void

    :cond_0
    move v0, v1

    .line 51
    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move v2, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 62
    instance-of v1, p1, Laov;

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    check-cast p1, Laov;

    .line 66
    iget v1, p0, Laov;->g:I

    iget v2, p1, Laov;->g:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Laov;->a:Ljava/lang/String;

    iget-object v2, p1, Laov;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laov;->b:Lapu;

    iget-object v2, p1, Laov;->b:Lapu;

    invoke-static {v1, v2}, Ld;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laov;->d:Laps;

    iget-object v2, p1, Laov;->d:Laps;

    invoke-static {v1, v2}, Ld;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v3}, Ld;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v3}, Ld;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Laov;->g:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 91
    const-string v0, "%s_%s_%s_%s_%s_%s_%d"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Laov;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, p0, Laov;->b:Lapu;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Laov;->d:Laps;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Laov;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
