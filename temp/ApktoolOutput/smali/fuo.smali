.class final Lfuo;
.super Ljava/lang/Object;
.source "MyGiftSelectableAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lfun;


# direct methods
.method constructor <init>(Lfun;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lfuo;->b:Lfun;

    iput-object p2, p0, Lfuo;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Lfus;

    iget-object v1, p0, Lfuo;->b:Lfun;

    invoke-direct {v0, v1, v3}, Lfus;-><init>(Lfun;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    iget-object v2, p0, Lfuo;->a:Ljava/util/List;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 90
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 91
    return-void
.end method
