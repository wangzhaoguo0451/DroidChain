.class final Laer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Laep;


# direct methods
.method constructor <init>(Laep;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laer;->a:Laep;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Laer;->a:Laep;

    invoke-static {v0}, Laep;->a(Laep;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lafz;->a(Landroid/widget/EditText;)V

    .line 187
    return-void
.end method
