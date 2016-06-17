.class public final Lbxf;
.super Ljava/lang/Object;
.source "Headers.java"


# instance fields
.field public final a:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lbxg;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Lbxg;->a:Ljava/util/List;

    iget-object v1, p1, Lbxg;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lbxf;->a:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lbxg;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lbxf;-><init>(Lbxg;)V

    return-void
.end method


# virtual methods
.method public final a()Lbxg;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lbxg;

    invoke-direct {v0}, Lbxg;-><init>()V

    .line 121
    iget-object v1, v0, Lbxg;->a:Ljava/util/List;

    iget-object v2, p0, Lbxf;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 122
    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 80
    mul-int/lit8 v0, p1, 0x2

    .line 81
    if-ltz v0, :cond_0

    iget-object v1, p0, Lbxf;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lbxf;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 60
    iget-object v1, p0, Lbxf;->a:[Ljava/lang/String;

    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 89
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 90
    if-ltz v0, :cond_0

    iget-object v1, p0, Lbxf;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lbxf;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lbxf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    invoke-static {v0}, Lbym;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const/4 v0, 0x0

    iget-object v2, p0, Lbxf;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lbxf;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lbxf;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
