.class public final Leuw;
.super Leut;
.source "SimpleMarginAdapterWrapper.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Leut;-><init>(Landroid/widget/BaseAdapter;)V

    .line 17
    iput-object p1, p0, Leuw;->c:Landroid/widget/BaseAdapter;

    .line 18
    iput p2, p0, Leuw;->a:I

    .line 19
    iput p3, p0, Leuw;->b:I

    .line 20
    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    iget v0, p0, Leuw;->a:I

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Leuw;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 41
    iget v0, p0, Leuw;->b:I

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
