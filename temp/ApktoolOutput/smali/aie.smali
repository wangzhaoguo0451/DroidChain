.class final Laie;
.super Landroid/database/DataSetObserver;
.source "StickyListHeadersAdapterWrapper.java"


# instance fields
.field private synthetic a:Laid;


# direct methods
.method constructor <init>(Laid;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Laie;->a:Laid;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Laie;->a:Laid;

    invoke-static {v0}, Laid;->a(Laid;)I

    .line 51
    iget-object v0, p0, Laie;->a:Laid;

    invoke-virtual {v0}, Laid;->notifyDataSetChanged()V

    .line 52
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Laie;->a:Laid;

    invoke-static {v0}, Laid;->a(Laid;)I

    .line 57
    iget-object v0, p0, Laie;->a:Laid;

    invoke-virtual {v0}, Laid;->notifyDataSetInvalidated()V

    .line 58
    return-void
.end method
