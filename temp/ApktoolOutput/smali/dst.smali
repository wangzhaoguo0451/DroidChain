.class public final Ldst;
.super Ldcq;
.source "SearchSuggestionTextView.java"

# interfaces
.implements Landroid/widget/Filterable;


# direct methods
.method public constructor <init>(Ldcm;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    invoke-direct {p0, p1}, Ldcq;-><init>(Ldcm;)V

    .line 225
    return-void
.end method

.method static synthetic a(Ldst;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Ldst;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 229
    new-instance v0, Ldsu;

    invoke-direct {v0, p0}, Ldsu;-><init>(Ldst;)V

    return-object v0
.end method
