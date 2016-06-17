.class public final Landroid/support/v7/widget/GridLayout$Assoc;
.super Ljava/util/ArrayList;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/util/Pair",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2145
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2146
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$Assoc;->keyType:Ljava/lang/Class;

    .line 2147
    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$Assoc;->valueType:Ljava/lang/Class;

    .line 2148
    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$Assoc;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Landroid/support/v7/widget/GridLayout$Assoc",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2151
    new-instance v0, Landroid/support/v7/widget/GridLayout$Assoc;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$Assoc;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final pack()Ltf;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltf",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2160
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Assoc;->size()I

    move-result v5

    .line 2161
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Assoc;->keyType:Ljava/lang/Class;

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2162
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Assoc;->valueType:Ljava/lang/Class;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move v3, v4

    .line 2163
    :goto_0
    if-ge v3, v5, :cond_0

    .line 2164
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayout$Assoc;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v2, v0, v3

    .line 2165
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayout$Assoc;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 2163
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 2167
    :cond_0
    new-instance v2, Ltf;

    invoke-direct {v2, v0, v1, v4}, Ltf;-><init>([Ljava/lang/Object;[Ljava/lang/Object;B)V

    return-object v2
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 2155
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$Assoc;->add(Ljava/lang/Object;)Z

    .line 2156
    return-void
.end method
